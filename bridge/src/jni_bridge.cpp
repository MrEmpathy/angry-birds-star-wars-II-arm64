#include "jni_bridge.h"

#include <array>
#include <atomic>
#include <cstddef>
#include <mutex>
#include <string>
#include <unordered_map>
#include <vector>

#include "display.h"
#include "hint.h"
#include "perf.h"
#include "elf32.h"
#include "hle.h"

namespace jni {
namespace {

using arena::hp;

JavaVM* g_vm = nullptr;
uint32_t g_genv = 0, g_gvm = 0;
thread_local JNIEnv* t_env = nullptr;
thread_local std::vector<jobject> t_locals(1, nullptr);  // slot 0 unused
thread_local std::vector<size_t> t_frames;

enum : uint32_t { kLocal = 1, kGlobal = 2, kWeak = 3 };

// Global and weak-global handles: chunked, lock-free reads.
class RefTable {
public:
    uint32_t add(jobject o) {
        std::lock_guard l(mu_);
        uint32_t idx;
        if (!free_.empty()) {
            idx = free_.back();
            free_.pop_back();
        } else {
            idx = next_++;
            if (idx >= kChunk * kChunks) fatal("JNI global table full");
            auto& c = chunks_[idx / kChunk];
            if (!c.load()) c.store(new std::atomic<jobject>[kChunk]());
        }
        chunks_[idx / kChunk].load()[idx % kChunk].store(o, std::memory_order_release);
        return idx;
    }
    jobject get(uint32_t idx) const {
        if (idx >= kChunk * kChunks) return nullptr;
        auto* c = chunks_[idx / kChunk].load(std::memory_order_acquire);
        return c ? c[idx % kChunk].load(std::memory_order_acquire) : nullptr;
    }
    jobject remove(uint32_t idx) {
        std::lock_guard l(mu_);
        auto* c = chunks_[idx / kChunk].load();
        if (!c) return nullptr;
        jobject o = c[idx % kChunk].exchange(nullptr);
        if (o) free_.push_back(idx);
        return o;
    }

private:
    static constexpr uint32_t kChunk = 4096, kChunks = 1024;
    std::mutex mu_;
    uint32_t next_ = 1;
    std::vector<uint32_t> free_;
    std::array<std::atomic<std::atomic<jobject>*>, kChunks> chunks_{};
};
RefTable g_globals, g_weaks;

uint32_t global(jobject o) { return o ? (g_globals.add(o) << 2) | kGlobal : 0; }

// Method and field IDs: host pointers mapped to small guest integers.
struct MethodInfo {
    jmethodID id;
    std::string params;  // one type char per parameter (L for references)
    char ret;
};
std::mutex g_id_mu;
std::vector<MethodInfo> g_methods(1);
std::unordered_map<jmethodID, uint32_t> g_method_ids;
std::vector<jfieldID> g_fields(1);
std::unordered_map<jfieldID, uint32_t> g_field_ids;

std::string parse_params(const char* sig, char* ret) {
    std::string out;
    const char* p = sig;
    if (*p == '(') ++p;
    while (*p && *p != ')') {
        char t = *p;
        while (*p == '[') ++p;
        if (*p == 'L') while (*p && *p != ';') ++p;
        ++p;
        out.push_back(t == '[' ? 'L' : t);
    }
    if (*p == ')') ++p;
    *ret = *p == '[' ? 'L' : *p;
    return out;
}

uint32_t method_id(jmethodID id, const char* sig) {
    if (!id) return 0;
    std::lock_guard l(g_id_mu);
    auto [it, fresh] = g_method_ids.try_emplace(id, 0);
    if (fresh) {
        MethodInfo mi{id, {}, 'V'};
        if (sig) mi.params = parse_params(sig, &mi.ret);
        g_methods.push_back(mi);
        it->second = static_cast<uint32_t>(g_methods.size() - 1);
    }
    return it->second;
}
MethodInfo method(uint32_t g) {
    std::lock_guard l(g_id_mu);
    if (g == 0 || g >= g_methods.size()) fatal("bad guest jmethodID %u", g);
    return g_methods[g];
}
uint32_t field_id(jfieldID id) {
    if (!id) return 0;
    std::lock_guard l(g_id_mu);
    auto [it, fresh] = g_field_ids.try_emplace(id, 0);
    if (fresh) {
        g_fields.push_back(id);
        it->second = static_cast<uint32_t>(g_fields.size() - 1);
    }
    return it->second;
}
jfieldID field(uint32_t g) {
    std::lock_guard l(g_id_mu);
    if (g == 0 || g >= g_fields.size()) fatal("bad guest jfieldID %u", g);
    return g_fields[g];
}

JNIEnv* E() { return env(); }

// ---------------------------------------------------------------- argument readers for Call*Method families
struct ArgSource {
    cpu::Ctx* c = nullptr;  // registers/stack words (varargs)
    int n = 0;
    uint32_t mem = 0;       // va_list or jvalue* walk
    bool jvalues = false;

    uint32_t word() {
        if (c) return c->arg(n++);
        uint32_t v;
        memcpy(&v, arena::h(mem), 4);
        mem += 4;
        return v;
    }
    uint64_t dword() {
        uint64_t v;
        if (c) {
            n = (n + 1) & ~1;
            uint64_t lo = c->arg(n++), hi = c->arg(n++);
            return lo | (hi << 32);
        }
        mem = (mem + 7) & ~7u;
        memcpy(&v, arena::h(mem), 8);
        mem += 8;
        return v;
    }
};

std::vector<jvalue> read_args(const MethodInfo& mi, ArgSource src) {
    std::vector<jvalue> out(mi.params.size());
    for (size_t i = 0; i < mi.params.size(); ++i) {
        jvalue v{};
        char t = mi.params[i];
        if (src.jvalues) {  // jvalue array: 8-byte slots, value in the low bytes
            uint32_t slot = src.mem + 8 * static_cast<uint32_t>(i);
            switch (t) {
            case 'Z': v.z = *hp<uint8_t>(slot); break;
            case 'B': v.b = *hp<int8_t>(slot); break;
            case 'C': v.c = *hp<uint16_t>(slot); break;
            case 'S': v.s = *hp<int16_t>(slot); break;
            case 'I': v.i = *hp<int32_t>(slot); break;
            case 'J': memcpy(&v.j, arena::h(slot), 8); break;
            case 'F': memcpy(&v.f, arena::h(slot), 4); break;
            case 'D': memcpy(&v.d, arena::h(slot), 8); break;
            default: v.l = obj(*hp<uint32_t>(slot)); break;
            }
        } else {  // C varargs: sub-int types promoted to int, float to double
            switch (t) {
            case 'Z': v.z = static_cast<jboolean>(src.word()); break;
            case 'B': v.b = static_cast<jbyte>(src.word()); break;
            case 'C': v.c = static_cast<jchar>(src.word()); break;
            case 'S': v.s = static_cast<jshort>(src.word()); break;
            case 'I': v.i = static_cast<jint>(src.word()); break;
            case 'J': v.j = static_cast<jlong>(src.dword()); break;
            case 'F': v.f = static_cast<jfloat>(std::bit_cast<double>(src.dword())); break;
            case 'D': v.d = std::bit_cast<double>(src.dword()); break;
            default: v.l = obj(src.word()); break;
            }
        }
        out[i] = v;
    }
    return out;
}

ArgSource source(cpu::Ctx& c, int var, int start) {
    ArgSource s;
    if (var == 0) { s.c = &c; s.n = start; }
    else { s.mem = c.arg(start); s.jvalues = var == 2; }
    return s;
}

enum Kind { kVirtual, kNonvirtual, kStatic };

template <char T, int K, int Var>
void call_method(cpu::Ctx& c) {
    const int mid_at = K == kNonvirtual ? 3 : 2;
    jobject target = obj(c.arg(1));
    jclass cls = K == kNonvirtual ? static_cast<jclass>(obj(c.arg(2))) : static_cast<jclass>(target);
    MethodInfo mi = method(c.arg(mid_at));
    std::vector<jvalue> a = read_args(mi, source(c, Var, mid_at + 1));
    JNIEnv* e = E();
    const jvalue* av = a.data();
#define DISPATCH(Name)                                                                     \
    (K == kVirtual      ? e->Call##Name##MethodA(target, mi.id, av)                        \
     : K == kStatic     ? e->CallStatic##Name##MethodA(cls, mi.id, av)                     \
                        : e->CallNonvirtual##Name##MethodA(target, cls, mi.id, av))
    if constexpr (T == 'V') {
        if (K == kVirtual) e->CallVoidMethodA(target, mi.id, av);
        else if (K == kStatic) e->CallStaticVoidMethodA(cls, mi.id, av);
        else e->CallNonvirtualVoidMethodA(target, cls, mi.id, av);
    } else if constexpr (T == 'L') c.ret(local(DISPATCH(Object)));
    else if constexpr (T == 'Z') c.ret(DISPATCH(Boolean) ? 1 : 0);
    else if constexpr (T == 'B') c.ret(static_cast<uint32_t>(static_cast<int32_t>(DISPATCH(Byte))));
    else if constexpr (T == 'C') c.ret(DISPATCH(Char));
    else if constexpr (T == 'S') c.ret(static_cast<uint32_t>(static_cast<int32_t>(DISPATCH(Short))));
    else if constexpr (T == 'I') c.ret(static_cast<uint32_t>(DISPATCH(Int)));
    else if constexpr (T == 'J') c.ret64(static_cast<uint64_t>(DISPATCH(Long)));
    else if constexpr (T == 'F') c.ret(std::bit_cast<uint32_t>(DISPATCH(Float)));
    else if constexpr (T == 'D') c.ret64(std::bit_cast<uint64_t>(DISPATCH(Double)));
#undef DISPATCH
}

template <int Var>
void new_object(cpu::Ctx& c) {
    auto cls = static_cast<jclass>(obj(c.arg(1)));
    MethodInfo mi = method(c.arg(2));
    std::vector<jvalue> a = read_args(mi, source(c, Var, 3));
    c.ret(local(E()->NewObjectA(cls, mi.id, a.data())));
}

template <char T, bool Static>
void get_field(cpu::Ctx& c) {
    JNIEnv* e = E();
    jobject o = obj(c.arg(1));
    auto cl = static_cast<jclass>(o);
    jfieldID f = field(c.arg(2));
#define GET(Name) (Static ? e->GetStatic##Name##Field(cl, f) : e->Get##Name##Field(o, f))
    if constexpr (T == 'L') c.ret(local(GET(Object)));
    else if constexpr (T == 'Z') c.ret(GET(Boolean) ? 1 : 0);
    else if constexpr (T == 'B') c.ret(static_cast<uint32_t>(static_cast<int32_t>(GET(Byte))));
    else if constexpr (T == 'C') c.ret(GET(Char));
    else if constexpr (T == 'S') c.ret(static_cast<uint32_t>(static_cast<int32_t>(GET(Short))));
    else if constexpr (T == 'I') c.ret(static_cast<uint32_t>(GET(Int)));
    else if constexpr (T == 'J') c.ret64(static_cast<uint64_t>(GET(Long)));
    else if constexpr (T == 'F') c.ret(std::bit_cast<uint32_t>(GET(Float)));
    else if constexpr (T == 'D') c.ret64(std::bit_cast<uint64_t>(GET(Double)));
#undef GET
}

template <char T, bool Static>
void set_field(cpu::Ctx& c) {
    JNIEnv* e = E();
    jobject o = obj(c.arg(1));
    auto cl = static_cast<jclass>(o);
    jfieldID f = field(c.arg(2));
    uint32_t w = c.arg(3);
    uint64_t dw = c.arg(4) | (uint64_t{c.arg(5)} << 32);  // 64-bit values skip r3 to stay 8-aligned
#define SET(Name, v) (Static ? e->SetStatic##Name##Field(cl, f, v) : e->Set##Name##Field(o, f, v))
    if constexpr (T == 'L') SET(Object, obj(w));
    else if constexpr (T == 'Z') SET(Boolean, static_cast<jboolean>(w));
    else if constexpr (T == 'B') SET(Byte, static_cast<jbyte>(w));
    else if constexpr (T == 'C') SET(Char, static_cast<jchar>(w));
    else if constexpr (T == 'S') SET(Short, static_cast<jshort>(w));
    else if constexpr (T == 'I') SET(Int, static_cast<jint>(w));
    else if constexpr (T == 'J') SET(Long, static_cast<jlong>(dw));
    else if constexpr (T == 'F') SET(Float, std::bit_cast<float>(w));
    else if constexpr (T == 'D') SET(Double, std::bit_cast<double>(dw));
#undef SET
}

// ---------------------------------------------------------------- fixed-signature functions
jint j_GetVersion(uint32_t) { return JNI_VERSION_1_6; }
uint32_t j_DefineClass(uint32_t, GStr, uint32_t, GPtr<const jbyte>, jsize) {
    LOGE("JNI DefineClass unsupported");
    return 0;
}
uint32_t j_FindClass(uint32_t, GStr name) { return local(E()->FindClass(name.h())); }
uint32_t j_FromReflectedMethod(uint32_t, uint32_t m) {
    LOGW("JNI FromReflectedMethod: signature unknown; varargs calls will fail");
    return method_id(E()->FromReflectedMethod(obj(m)), nullptr);
}
uint32_t j_FromReflectedField(uint32_t, uint32_t f) { return field_id(E()->FromReflectedField(obj(f))); }
uint32_t j_ToReflectedMethod(uint32_t, uint32_t cls, uint32_t mid, uint32_t is_static) {
    return local(E()->ToReflectedMethod(static_cast<jclass>(obj(cls)), method(mid).id, static_cast<jboolean>(is_static)));
}
uint32_t j_GetSuperclass(uint32_t, uint32_t c) { return local(E()->GetSuperclass(static_cast<jclass>(obj(c)))); }
uint32_t j_IsAssignableFrom(uint32_t, uint32_t a, uint32_t b) {
    return E()->IsAssignableFrom(static_cast<jclass>(obj(a)), static_cast<jclass>(obj(b)));
}
uint32_t j_ToReflectedField(uint32_t, uint32_t cls, uint32_t fid, uint32_t is_static) {
    return local(E()->ToReflectedField(static_cast<jclass>(obj(cls)), field(fid), static_cast<jboolean>(is_static)));
}
jint j_Throw(uint32_t, uint32_t t) { return E()->Throw(static_cast<jthrowable>(obj(t))); }
jint j_ThrowNew(uint32_t, uint32_t cls, GStr msg) { return E()->ThrowNew(static_cast<jclass>(obj(cls)), msg.h()); }
uint32_t j_ExceptionOccurred(uint32_t) { return local(E()->ExceptionOccurred()); }
void j_ExceptionDescribe(uint32_t) { E()->ExceptionDescribe(); }
void j_ExceptionClear(uint32_t) { E()->ExceptionClear(); }
void j_FatalError(uint32_t, GStr msg) { fatal("guest JNI FatalError: %s", msg ? msg.h() : "?"); }
jint j_PushLocalFrame(uint32_t, jint cap) {
    jint r = E()->PushLocalFrame(cap);
    if (r == 0) t_frames.push_back(t_locals.size());
    return r;
}
uint32_t j_PopLocalFrame(uint32_t, uint32_t result) {
    jobject res = E()->PopLocalFrame(obj(result));
    if (!t_frames.empty()) {
        t_locals.resize(t_frames.back());
        t_frames.pop_back();
    }
    return local(res);
}
uint32_t j_NewGlobalRef(uint32_t, uint32_t h) { return global(E()->NewGlobalRef(obj(h))); }
void j_DeleteGlobalRef(uint32_t, uint32_t h) {
    if ((h & 3) != kGlobal) return;
    if (jobject o = g_globals.remove(h >> 2)) E()->DeleteGlobalRef(o);
}
void j_DeleteLocalRef(uint32_t, uint32_t h) {
    if ((h & 3) != kLocal) return;
    size_t idx = h >> 2;
    if (idx == 0 || idx >= t_locals.size() || !t_locals[idx]) return;
    E()->DeleteLocalRef(t_locals[idx]);
    t_locals[idx] = nullptr;
    size_t floor = t_frames.empty() ? 1 : t_frames.back();
    while (t_locals.size() > floor && !t_locals.back()) t_locals.pop_back();
}
uint32_t j_IsSameObject(uint32_t, uint32_t a, uint32_t b) { return E()->IsSameObject(obj(a), obj(b)); }
uint32_t j_NewLocalRef(uint32_t, uint32_t h) { return local(E()->NewLocalRef(obj(h))); }
jint j_EnsureLocalCapacity(uint32_t, jint n) { return E()->EnsureLocalCapacity(n); }
uint32_t j_AllocObject(uint32_t, uint32_t c) { return local(E()->AllocObject(static_cast<jclass>(obj(c)))); }
uint32_t j_GetObjectClass(uint32_t, uint32_t o) { return local(E()->GetObjectClass(obj(o))); }
uint32_t j_IsInstanceOf(uint32_t, uint32_t o, uint32_t c) { return E()->IsInstanceOf(obj(o), static_cast<jclass>(obj(c))); }
uint32_t j_GetMethodID(uint32_t, uint32_t c, GStr name, GStr sig) {
    return method_id(E()->GetMethodID(static_cast<jclass>(obj(c)), name.h(), sig.h()), sig.h());
}
uint32_t j_GetStaticMethodID(uint32_t, uint32_t c, GStr name, GStr sig) {
    return method_id(E()->GetStaticMethodID(static_cast<jclass>(obj(c)), name.h(), sig.h()), sig.h());
}
uint32_t j_GetFieldID(uint32_t, uint32_t c, GStr name, GStr sig) {
    return field_id(E()->GetFieldID(static_cast<jclass>(obj(c)), name.h(), sig.h()));
}
uint32_t j_GetStaticFieldID(uint32_t, uint32_t c, GStr name, GStr sig) {
    return field_id(E()->GetStaticFieldID(static_cast<jclass>(obj(c)), name.h(), sig.h()));
}

uint32_t j_NewString(uint32_t, GPtr<const jchar> u, jsize n) { return local(E()->NewString(u.h(), n)); }
jsize j_GetStringLength(uint32_t, uint32_t s) { return E()->GetStringLength(static_cast<jstring>(obj(s))); }
uint32_t j_GetStringChars(uint32_t, uint32_t s, GPtr<uint8_t> is_copy) {
    auto str = static_cast<jstring>(obj(s));
    jsize n = E()->GetStringLength(str);
    uint32_t g = arena::gmalloc(static_cast<uint32_t>(n + 1) * 2);
    E()->GetStringRegion(str, 0, n, hp<jchar>(g));
    hp<jchar>(g)[n] = 0;
    if (is_copy) *is_copy.h() = JNI_TRUE;
    return g;
}
void j_ReleaseStringChars(uint32_t, uint32_t, GPtr<const jchar> c) { arena::gfree(c.a); }
uint32_t j_NewStringUTF(uint32_t, GStr s) { return s ? local(E()->NewStringUTF(s.h())) : 0; }
jsize j_GetStringUTFLength(uint32_t, uint32_t s) { return E()->GetStringUTFLength(static_cast<jstring>(obj(s))); }
uint32_t j_GetStringUTFChars(uint32_t, uint32_t s, GPtr<uint8_t> is_copy) {
    auto str = static_cast<jstring>(obj(s));
    const char* c = E()->GetStringUTFChars(str, nullptr);
    if (!c) return 0;
    uint32_t g = arena::gstrdup(c);
    E()->ReleaseStringUTFChars(str, c);
    if (is_copy) *is_copy.h() = JNI_TRUE;
    return g;
}
void j_ReleaseStringUTFChars(uint32_t, uint32_t, GStr c) { arena::gfree(c.a); }
void j_GetStringRegion(uint32_t, uint32_t s, jsize st, jsize n, GPtr<jchar> buf) {
    E()->GetStringRegion(static_cast<jstring>(obj(s)), st, n, buf.h());
}
void j_GetStringUTFRegion(uint32_t, uint32_t s, jsize st, jsize n, GPtr<char> buf) {
    E()->GetStringUTFRegion(static_cast<jstring>(obj(s)), st, n, buf.h());
}

jsize j_GetArrayLength(uint32_t, uint32_t a) { return E()->GetArrayLength(static_cast<jarray>(obj(a))); }
uint32_t j_NewObjectArray(uint32_t, jsize n, uint32_t cls, uint32_t init) {
    return local(E()->NewObjectArray(n, static_cast<jclass>(obj(cls)), obj(init)));
}
uint32_t j_GetObjectArrayElement(uint32_t, uint32_t a, jsize i) {
    return local(E()->GetObjectArrayElement(static_cast<jobjectArray>(obj(a)), i));
}
void j_SetObjectArrayElement(uint32_t, uint32_t a, jsize i, uint32_t v) {
    E()->SetObjectArrayElement(static_cast<jobjectArray>(obj(a)), i, obj(v));
}

template <typename J, typename A, A (_JNIEnv::*New)(jsize), void (_JNIEnv::*GetR)(A, jsize, jsize, J*),
          void (_JNIEnv::*SetR)(A, jsize, jsize, const J*)>
struct Prim {
    static uint32_t new_array(uint32_t, jsize n) { return local((E()->*New)(n)); }
    static void get_region(uint32_t, uint32_t a, jsize st, jsize n, GPtr<J> buf) {
        (E()->*GetR)(static_cast<A>(obj(a)), st, n, buf.h());
    }
    static void set_region(uint32_t, uint32_t a, jsize st, jsize n, GPtr<const J> buf) {
        (E()->*SetR)(static_cast<A>(obj(a)), st, n, buf.h());
    }
    static uint32_t get_elements(uint32_t, uint32_t a, GPtr<uint8_t> is_copy) {
        auto arr = static_cast<A>(obj(a));
        jsize n = E()->GetArrayLength(arr);
        uint32_t g = arena::gmalloc(static_cast<uint32_t>(n > 0 ? n : 1) * sizeof(J));
        (E()->*GetR)(arr, 0, n, hp<J>(g));
        if (is_copy) *is_copy.h() = JNI_TRUE;
        return g;
    }
    static void release_elements(uint32_t, uint32_t a, GPtr<J> elems, jint mode) {
        if (mode != JNI_ABORT) {
            auto arr = static_cast<A>(obj(a));
            (E()->*SetR)(arr, 0, E()->GetArrayLength(arr), elems.h());
        }
        if (mode != JNI_COMMIT) arena::gfree(elems.a);
    }
};
using PZ = Prim<jboolean, jbooleanArray, &_JNIEnv::NewBooleanArray, &_JNIEnv::GetBooleanArrayRegion, &_JNIEnv::SetBooleanArrayRegion>;
using PB = Prim<jbyte, jbyteArray, &_JNIEnv::NewByteArray, &_JNIEnv::GetByteArrayRegion, &_JNIEnv::SetByteArrayRegion>;
using PC = Prim<jchar, jcharArray, &_JNIEnv::NewCharArray, &_JNIEnv::GetCharArrayRegion, &_JNIEnv::SetCharArrayRegion>;
using PS = Prim<jshort, jshortArray, &_JNIEnv::NewShortArray, &_JNIEnv::GetShortArrayRegion, &_JNIEnv::SetShortArrayRegion>;
using PI = Prim<jint, jintArray, &_JNIEnv::NewIntArray, &_JNIEnv::GetIntArrayRegion, &_JNIEnv::SetIntArrayRegion>;
using PJ = Prim<jlong, jlongArray, &_JNIEnv::NewLongArray, &_JNIEnv::GetLongArrayRegion, &_JNIEnv::SetLongArrayRegion>;
using PF = Prim<jfloat, jfloatArray, &_JNIEnv::NewFloatArray, &_JNIEnv::GetFloatArrayRegion, &_JNIEnv::SetFloatArrayRegion>;
using PD = Prim<jdouble, jdoubleArray, &_JNIEnv::NewDoubleArray, &_JNIEnv::GetDoubleArrayRegion, &_JNIEnv::SetDoubleArrayRegion>;

// Critical array access: element type is discovered from the array class.
std::array<jclass, 8> g_prim_classes{};
constexpr char kPrimTypes[] = "ZBCSIJFD";
constexpr uint32_t kPrimSizes[] = {1, 1, 2, 2, 4, 8, 4, 8};
std::mutex g_crit_mu;
std::unordered_map<uint32_t, int> g_critical;  // guest buffer -> prim type index

uint32_t j_GetPrimitiveArrayCritical(uint32_t, uint32_t a, GPtr<uint8_t> is_copy) {
    JNIEnv* e = E();
    auto arr = static_cast<jarray>(obj(a));
    int t = -1;
    for (int i = 0; i < 8; ++i)
        if (g_prim_classes[i] && e->IsInstanceOf(arr, g_prim_classes[i])) { t = i; break; }
    if (t < 0) fatal("GetPrimitiveArrayCritical on a non-primitive array");
    jsize n = e->GetArrayLength(arr);
    uint32_t g = arena::gmalloc(static_cast<uint32_t>(n > 0 ? n : 1) * kPrimSizes[t]);
    void* p = e->GetPrimitiveArrayCritical(arr, nullptr);
    memcpy(arena::h(g), p, static_cast<size_t>(n) * kPrimSizes[t]);
    e->ReleasePrimitiveArrayCritical(arr, p, JNI_ABORT);
    if (is_copy) *is_copy.h() = JNI_TRUE;
    std::lock_guard l(g_crit_mu);
    g_critical[g] = t;
    return g;
}
void j_ReleasePrimitiveArrayCritical(uint32_t, uint32_t a, GPtr<void> buf, jint mode) {
    int t;
    {
        std::lock_guard l(g_crit_mu);
        auto it = g_critical.find(buf.a);
        if (it == g_critical.end()) return;
        t = it->second;
        if (mode != JNI_COMMIT) g_critical.erase(it);
    }
    if (mode != JNI_ABORT) {
        JNIEnv* e = E();
        auto arr = static_cast<jarray>(obj(a));
        jsize n = e->GetArrayLength(arr);
        void* p = e->GetPrimitiveArrayCritical(arr, nullptr);
        memcpy(p, buf.h(), static_cast<size_t>(n) * kPrimSizes[t]);
        e->ReleasePrimitiveArrayCritical(arr, p, 0);
    }
    if (mode != JNI_COMMIT) arena::gfree(buf.a);
}
uint32_t j_GetStringCritical(uint32_t e, uint32_t s, GPtr<uint8_t> is_copy) { return j_GetStringChars(e, s, is_copy); }
void j_ReleaseStringCritical(uint32_t, uint32_t, GPtr<const jchar> c) { arena::gfree(c.a); }

jint j_RegisterNatives(uint32_t, uint32_t cls, GPtr<const uint32_t> methods, jint n);
jint j_UnregisterNatives(uint32_t, uint32_t cls) { return E()->UnregisterNatives(static_cast<jclass>(obj(cls))); }
jint j_MonitorEnter(uint32_t, uint32_t o) { return E()->MonitorEnter(obj(o)); }
jint j_MonitorExit(uint32_t, uint32_t o) { return E()->MonitorExit(obj(o)); }
jint j_GetJavaVM(uint32_t, GPtr<uint32_t> out) { *out.h() = g_gvm; return JNI_OK; }
uint32_t j_NewWeakGlobalRef(uint32_t, uint32_t h) {
    jobject w = E()->NewWeakGlobalRef(obj(h));
    return w ? (g_weaks.add(w) << 2) | kWeak : 0;
}
void j_DeleteWeakGlobalRef(uint32_t, uint32_t h) {
    if ((h & 3) != kWeak) return;
    if (jobject o = g_weaks.remove(h >> 2)) E()->DeleteWeakGlobalRef(o);
}
uint32_t j_ExceptionCheck(uint32_t) { return E()->ExceptionCheck(); }
uint32_t j_NewDirectByteBuffer(uint32_t, GPtr<void> addr, int64_t cap) {
    return local(E()->NewDirectByteBuffer(addr.h(), cap));
}
uint32_t j_GetDirectBufferAddress(uint32_t, uint32_t b) {
    void* p = E()->GetDirectBufferAddress(obj(b));
    if (p && !arena::contains(p)) {
        LOGE("GetDirectBufferAddress: buffer outside guest memory");
        return 0;
    }
    return arena::g(p);
}
int64_t j_GetDirectBufferCapacity(uint32_t, uint32_t b) { return E()->GetDirectBufferCapacity(obj(b)); }
jint j_GetObjectRefType(uint32_t, uint32_t h) {
    switch (h & 3) {
    case kLocal: return JNILocalRefType;
    case kGlobal: return JNIGlobalRefType;
    case kWeak: return JNIWeakGlobalRefType;
    default: return JNIInvalidRefType;
    }
}

// ---------------------------------------------------------------- JavaVM invoke interface
jint v_DestroyJavaVM(uint32_t) { return JNI_ERR; }
jint attach(GPtr<uint32_t> penv, GPtr<const uint32_t> args, bool daemon) {
    JavaVMAttachArgs a{JNI_VERSION_1_6, nullptr, nullptr};
    if (args) {
        a.version = static_cast<jint>(args.h()[0]);
        a.name = hp<const char>(args.h()[1]);
    }
    JNIEnv* e = nullptr;
    jint r = daemon ? g_vm->AttachCurrentThreadAsDaemon(&e, &a) : g_vm->AttachCurrentThread(&e, &a);
    if (r == JNI_OK) t_env = e;
    if (penv) *penv.h() = r == JNI_OK ? g_genv : 0;
    return r;
}
jint v_AttachCurrentThread(uint32_t, GPtr<uint32_t> penv, GPtr<const uint32_t> args) { return attach(penv, args, false); }
jint v_AttachCurrentThreadAsDaemon(uint32_t, GPtr<uint32_t> penv, GPtr<const uint32_t> args) { return attach(penv, args, true); }
jint v_DetachCurrentThread(uint32_t) {
    t_env = nullptr;
    t_locals.assign(1, nullptr);
    t_frames.clear();
    return g_vm->DetachCurrentThread();
}
jint v_GetEnv(uint32_t, GPtr<uint32_t> penv, jint version) {
    JNIEnv* e = nullptr;
    jint r = g_vm->GetEnv(reinterpret_cast<void**>(&e), version);
    if (r == JNI_OK) t_env = e;
    *penv.h() = r == JNI_OK ? g_genv : 0;
    return r;
}

void unimplemented(cpu::Ctx& c) {
    fatal("unimplemented JNI function %s called from %s", hle::thunk_name(c.r(15) - 4).c_str(),
          elf::describe(c.r(14)).c_str());
}

// ---------------------------------------------------------------- native method trampolines (host -> guest)
struct NativeSlot {
    const char* cls;
    const char* name;
    const char* sig;
    const char* mangled;
    void* tramp;
};
extern const NativeSlot kNatives[];
extern const size_t kNumNatives;
std::vector<std::atomic<uint32_t>> g_native_addr(512);

template <typename T>
void push_arg(cpu::Args& a, T v) {
    if constexpr (std::is_same_v<T, jlong>) a.d64(static_cast<uint64_t>(v));
    else if constexpr (std::is_same_v<T, jdouble>) a.d64(std::bit_cast<uint64_t>(v));
    else if constexpr (std::is_same_v<T, jfloat>) a.f(v);
    else if constexpr (std::is_pointer_v<T>) a.w(local(reinterpret_cast<jobject>(v)));
    else a.w(static_cast<uint32_t>(static_cast<int32_t>(v)));
}

// Slots that get host-side adaptation (see display.h); resolved once in init().
std::atomic<int> g_slot_config{-1};  // NativeApplication.nativeConfig (UI thread, before the GL surface exists)
std::atomic<int> g_slot_input{-1};   // MyInputHandler.nativeInput(id, x, y, action)
std::atomic<int> g_slot_init{-1};    // NativeApplication.nativeInit(w, h): game start-up on the GL thread
std::atomic<int> g_slot_update{-1};  // NativeApplication.nativeUpdate / nativeRender: one frame each
std::atomic<int> g_slot_render{-1};
std::atomic<int> g_slot_pause{-1};   // NativeApplication.nativePause / nativeResume
std::atomic<int> g_slot_resume{-1};
std::atomic<bool> g_frame_pending{true};  // log the next frame (start-up, then after each resume)
uint64_t g_resume_ns = 0;

template <int Slot, typename R, typename... A>
R native_tramp(JNIEnv* env, jobject self, A... a) {
    Scope scope(env);
    if (Slot == g_slot_config.load(std::memory_order_relaxed)) display::on_native_config(env, self);
    cpu::Args args;
    args.w(g_genv).w(local(self));
    (push_arg(args, a), ...);
    if (Slot == g_slot_input.load(std::memory_order_relaxed)) {
        float s = display::input_scale();
        if (s != 1.0f) {  // touch coordinates are in view pixels; the guest renders at the capped surface size
            args.words[3] = std::bit_cast<uint32_t>(std::bit_cast<float>(args.words[3]) * s);
            args.words[4] = std::bit_cast<uint32_t>(std::bit_cast<float>(args.words[4]) * s);
        }
    }
    uint32_t fn = g_native_addr[Slot].load(std::memory_order_acquire);
    if (!fn) fatal("native %s.%s is not bound", kNatives[Slot].cls, kNatives[Slot].name);
    const bool frame = Slot == g_slot_update.load(std::memory_order_relaxed) ||
                       Slot == g_slot_render.load(std::memory_order_relaxed);
    if (frame) display::pace_frame();
    const bool profile = frame && perf::enabled();
    uint64_t w0 = 0, c0 = 0, h0 = 0;
    if (frame) c0 = perf::thread_cpu_ns();
    if (profile) {
        w0 = perf::now_ns();
        h0 = perf::thread_hle_ns();
    }
    if (Slot == g_slot_init.load(std::memory_order_relaxed)) perf::sample_this_thread();
    uint64_t r = cpu::call(fn, args.words);
    if (frame) {
        const uint64_t cpu_ns = perf::thread_cpu_ns() - c0;
        hint::frame_done(cpu_ns);
        if (profile) {
            perf::native_call(Slot == g_slot_render.load(std::memory_order_relaxed) ? perf::Native::kRender
                                                                                    : perf::Native::kUpdate,
                              perf::now_ns() - w0, cpu_ns, perf::thread_hle_ns() - h0);
        }
    }
    if (Slot == g_slot_init.load(std::memory_order_relaxed)) {
        perf::mark("nativeInit done");
        perf::report_samples_now("nativeInit");
    }
    if (Slot == g_slot_pause.load(std::memory_order_relaxed)) LOGI("lifecycle: nativePause");
    if (Slot == g_slot_resume.load(std::memory_order_relaxed)) {
        g_resume_ns = perf::now_ns();
        g_frame_pending.store(true);
        LOGI("lifecycle: nativeResume");
    }
    if (frame && g_frame_pending.exchange(false)) {
        if (g_resume_ns) LOGI("lifecycle: first frame %.0f ms after nativeResume", (perf::now_ns() - g_resume_ns) / 1e6);
        else perf::mark("first frame");
        perf::report_samples_now("first frame");
    }
    if constexpr (std::is_void_v<R>) {
        return;
    } else if constexpr (std::is_pointer_v<R>) {
        uint32_t h = static_cast<uint32_t>(r);
        jobject o = obj(h);
        return static_cast<R>((h & 3) == kLocal ? o : (o ? env->NewLocalRef(o) : nullptr));
    } else if constexpr (std::is_same_v<R, jlong>) {
        return static_cast<jlong>(r);
    } else if constexpr (std::is_same_v<R, jdouble>) {
        return std::bit_cast<jdouble>(r);
    } else if constexpr (std::is_same_v<R, jfloat>) {
        return std::bit_cast<jfloat>(static_cast<uint32_t>(r));
    } else if constexpr (std::is_same_v<R, jboolean>) {
        return static_cast<jboolean>((r & 0xFF) != 0);
    } else {
        return static_cast<R>(static_cast<int32_t>(static_cast<uint32_t>(r)));
    }
}

const NativeSlot kNatives[] = {
#include "natives_gen.inc"
};
const size_t kNumNatives = std::size(kNatives);

std::string class_name(JNIEnv* e, jclass cls) {
    jclass cc = e->FindClass("java/lang/Class");
    jmethodID get_name = e->GetMethodID(cc, "getName", "()Ljava/lang/String;");
    auto s = static_cast<jstring>(e->CallObjectMethod(cls, get_name));
    const char* c = e->GetStringUTFChars(s, nullptr);
    std::string n(c);
    e->ReleaseStringUTFChars(s, c);
    for (char& ch : n) if (ch == '.') ch = '/';
    return n;
}

int find_native(const std::string& cls, const char* name, const char* sig) {
    for (size_t i = 0; i < kNumNatives; ++i)
        if (cls == kNatives[i].cls && !strcmp(name, kNatives[i].name) && !strcmp(sig, kNatives[i].sig))
            return static_cast<int>(i);
    return -1;
}

jint j_RegisterNatives(uint32_t, uint32_t cls, GPtr<const uint32_t> methods, jint n) {
    JNIEnv* e = E();
    auto c = static_cast<jclass>(obj(cls));
    std::string cname = class_name(e, c);
    for (jint i = 0; i < n; ++i) {
        const char* name = hp<const char>(methods.h()[3 * i]);
        const char* sig = hp<const char>(methods.h()[3 * i + 1]);
        uint32_t fn = methods.h()[3 * i + 2];
        int slot = find_native(cname, name, sig);
        if (slot < 0) {
            LOGE("RegisterNatives: no trampoline for %s.%s%s", cname.c_str(), name, sig);
            continue;
        }
        g_native_addr[static_cast<size_t>(slot)].store(fn, std::memory_order_release);
        JNINativeMethod m{name, sig, kNatives[slot].tramp};
        if (e->RegisterNatives(c, &m, 1) != JNI_OK) {
            e->ExceptionClear();
            LOGE("RegisterNatives failed for %s.%s", cname.c_str(), name);
        }
    }
    return JNI_OK;
}

}  // namespace

// ---------------------------------------------------------------- public API
uint32_t guest_env() { return g_genv; }
uint32_t guest_vm() { return g_gvm; }

JNIEnv* env() {
    if (t_env) return t_env;
    JNIEnv* e = nullptr;
    if (g_vm->GetEnv(reinterpret_cast<void**>(&e), JNI_VERSION_1_6) != JNI_OK) {
        LOGW("guest used JNI on an unattached thread; attaching");
        g_vm->AttachCurrentThread(&e, nullptr);
    }
    t_env = e;
    return e;
}

uint32_t local(jobject o) {
    if (!o) return 0;
    t_locals.push_back(o);
    return static_cast<uint32_t>((t_locals.size() - 1) << 2) | kLocal;
}

jobject obj(uint32_t h) {
    uint32_t idx = h >> 2;
    switch (h & 3) {
    case kLocal:
        if (idx < t_locals.size()) return t_locals[idx];
        LOGE("stale local handle 0x%x", h);
        return nullptr;
    case kGlobal: return g_globals.get(idx);
    case kWeak: return g_weaks.get(idx);
    default:
        if (h) LOGE("invalid handle 0x%x", h);
        return nullptr;
    }
}

Scope::Scope(JNIEnv* e) : mark_(t_locals.size()) {
    t_env = e;
    t_frames.push_back(mark_);
}
Scope::~Scope() {
    t_locals.resize(mark_);
    t_frames.pop_back();
}

int bind_exports(JNIEnv* e) {
    int bound = 0;
    for (size_t i = 0; i < kNumNatives; ++i) {
        uint32_t fn = elf::find_export(kNatives[i].mangled);
        if (!fn) continue;
        g_native_addr[i].store(fn, std::memory_order_release);
        jclass c = e->FindClass(kNatives[i].cls);
        if (!c) {
            e->ExceptionClear();
            LOGW("class %s not found; %s not registered", kNatives[i].cls, kNatives[i].name);
            continue;
        }
        JNINativeMethod m{kNatives[i].name, kNatives[i].sig, kNatives[i].tramp};
        if (e->RegisterNatives(c, &m, 1) != JNI_OK) {
            e->ExceptionClear();
            LOGE("RegisterNatives failed for %s.%s", kNatives[i].cls, kNatives[i].name);
        } else {
            ++bound;
        }
        e->DeleteLocalRef(c);
    }
    return bound;
}

void init(JavaVM* vm, JNIEnv* e) {
    g_vm = vm;
    t_env = e;
    constexpr size_t kEnvSlots = sizeof(JNINativeInterface) / sizeof(void*);
    constexpr size_t kVmSlots = sizeof(JNIInvokeInterface) / sizeof(void*);
    uint32_t table = arena::static_alloc(kEnvSlots * 4, 8);
    uint32_t vm_table = arena::static_alloc(kVmSlots * 4, 8);
    g_genv = arena::static_alloc(4, 4);
    g_gvm = arena::static_alloc(4, 4);
    *hp<uint32_t>(g_genv) = table;
    *hp<uint32_t>(g_gvm) = vm_table;
    for (size_t i = 0; i < kEnvSlots; ++i)
        hp<uint32_t>(table)[i] = hle::add("jni.slot" + std::to_string(i), &unimplemented);
    for (size_t i = 0; i < kVmSlots; ++i)
        hp<uint32_t>(vm_table)[i] = hle::add("jvm.slot" + std::to_string(i), &unimplemented);

#define SETF(field, fn) hp<uint32_t>(table)[offsetof(JNINativeInterface, field) / sizeof(void*)] = hle::add("jni." #field, fn)
#define SET(field, f) SETF(field, (&hle::detail::thunk<f, false>))
#define VSET(field, f) \
    hp<uint32_t>(vm_table)[offsetof(JNIInvokeInterface, field) / sizeof(void*)] = hle::add("jvm." #field, &hle::detail::thunk<f, false>)

    SET(GetVersion, j_GetVersion); SET(DefineClass, j_DefineClass); SET(FindClass, j_FindClass);
    SET(FromReflectedMethod, j_FromReflectedMethod); SET(FromReflectedField, j_FromReflectedField);
    SET(ToReflectedMethod, j_ToReflectedMethod); SET(GetSuperclass, j_GetSuperclass);
    SET(IsAssignableFrom, j_IsAssignableFrom); SET(ToReflectedField, j_ToReflectedField); SET(Throw, j_Throw);
    SET(ThrowNew, j_ThrowNew); SET(ExceptionOccurred, j_ExceptionOccurred); SET(ExceptionDescribe, j_ExceptionDescribe);
    SET(ExceptionClear, j_ExceptionClear); SET(FatalError, j_FatalError); SET(PushLocalFrame, j_PushLocalFrame);
    SET(PopLocalFrame, j_PopLocalFrame); SET(NewGlobalRef, j_NewGlobalRef); SET(DeleteGlobalRef, j_DeleteGlobalRef);
    SET(DeleteLocalRef, j_DeleteLocalRef); SET(IsSameObject, j_IsSameObject); SET(NewLocalRef, j_NewLocalRef);
    SET(EnsureLocalCapacity, j_EnsureLocalCapacity); SET(AllocObject, j_AllocObject);
    SETF(NewObject, &new_object<0>); SETF(NewObjectV, &new_object<1>); SETF(NewObjectA, &new_object<2>);
    SET(GetObjectClass, j_GetObjectClass); SET(IsInstanceOf, j_IsInstanceOf); SET(GetMethodID, j_GetMethodID);

#define CALLS(Name, ch)                                                                                     \
    SETF(Call##Name##Method, (&call_method<ch, kVirtual, 0>));                                              \
    SETF(Call##Name##MethodV, (&call_method<ch, kVirtual, 1>));                                             \
    SETF(Call##Name##MethodA, (&call_method<ch, kVirtual, 2>));                                             \
    SETF(CallNonvirtual##Name##Method, (&call_method<ch, kNonvirtual, 0>));                                 \
    SETF(CallNonvirtual##Name##MethodV, (&call_method<ch, kNonvirtual, 1>));                                \
    SETF(CallNonvirtual##Name##MethodA, (&call_method<ch, kNonvirtual, 2>));                                \
    SETF(CallStatic##Name##Method, (&call_method<ch, kStatic, 0>));                                         \
    SETF(CallStatic##Name##MethodV, (&call_method<ch, kStatic, 1>));                                        \
    SETF(CallStatic##Name##MethodA, (&call_method<ch, kStatic, 2>));
    CALLS(Object, 'L') CALLS(Boolean, 'Z') CALLS(Byte, 'B') CALLS(Char, 'C') CALLS(Short, 'S')
    CALLS(Int, 'I') CALLS(Long, 'J') CALLS(Float, 'F') CALLS(Double, 'D') CALLS(Void, 'V')
#undef CALLS

#define FIELDS(Name, ch)                                                                                    \
    SETF(Get##Name##Field, (&get_field<ch, false>)); SETF(Set##Name##Field, (&set_field<ch, false>));      \
    SETF(GetStatic##Name##Field, (&get_field<ch, true>)); SETF(SetStatic##Name##Field, (&set_field<ch, true>));
    FIELDS(Object, 'L') FIELDS(Boolean, 'Z') FIELDS(Byte, 'B') FIELDS(Char, 'C') FIELDS(Short, 'S')
    FIELDS(Int, 'I') FIELDS(Long, 'J') FIELDS(Float, 'F') FIELDS(Double, 'D')
#undef FIELDS

    SET(GetFieldID, j_GetFieldID); SET(GetStaticMethodID, j_GetStaticMethodID); SET(GetStaticFieldID, j_GetStaticFieldID);
    SET(NewString, j_NewString); SET(GetStringLength, j_GetStringLength); SET(GetStringChars, j_GetStringChars);
    SET(ReleaseStringChars, j_ReleaseStringChars); SET(NewStringUTF, j_NewStringUTF);
    SET(GetStringUTFLength, j_GetStringUTFLength); SET(GetStringUTFChars, j_GetStringUTFChars);
    SET(ReleaseStringUTFChars, j_ReleaseStringUTFChars); SET(GetArrayLength, j_GetArrayLength);
    SET(NewObjectArray, j_NewObjectArray); SET(GetObjectArrayElement, j_GetObjectArrayElement);
    SET(SetObjectArrayElement, j_SetObjectArrayElement);

#define PRIMS(Name, P)                                                                                      \
    SET(New##Name##Array, P::new_array); SET(Get##Name##ArrayElements, P::get_elements);                     \
    SET(Release##Name##ArrayElements, P::release_elements); SET(Get##Name##ArrayRegion, P::get_region);      \
    SET(Set##Name##ArrayRegion, P::set_region);
    PRIMS(Boolean, PZ) PRIMS(Byte, PB) PRIMS(Char, PC) PRIMS(Short, PS) PRIMS(Int, PI) PRIMS(Long, PJ)
    PRIMS(Float, PF) PRIMS(Double, PD)
#undef PRIMS

    SET(RegisterNatives, j_RegisterNatives); SET(UnregisterNatives, j_UnregisterNatives);
    SET(MonitorEnter, j_MonitorEnter); SET(MonitorExit, j_MonitorExit); SET(GetJavaVM, j_GetJavaVM);
    SET(GetStringRegion, j_GetStringRegion); SET(GetStringUTFRegion, j_GetStringUTFRegion);
    SET(GetPrimitiveArrayCritical, j_GetPrimitiveArrayCritical);
    SET(ReleasePrimitiveArrayCritical, j_ReleasePrimitiveArrayCritical);
    SET(GetStringCritical, j_GetStringCritical); SET(ReleaseStringCritical, j_ReleaseStringCritical);
    SET(NewWeakGlobalRef, j_NewWeakGlobalRef); SET(DeleteWeakGlobalRef, j_DeleteWeakGlobalRef);
    SET(ExceptionCheck, j_ExceptionCheck); SET(NewDirectByteBuffer, j_NewDirectByteBuffer);
    SET(GetDirectBufferAddress, j_GetDirectBufferAddress); SET(GetDirectBufferCapacity, j_GetDirectBufferCapacity);
    SET(GetObjectRefType, j_GetObjectRefType);

    VSET(DestroyJavaVM, v_DestroyJavaVM); VSET(AttachCurrentThread, v_AttachCurrentThread);
    VSET(DetachCurrentThread, v_DetachCurrentThread); VSET(GetEnv, v_GetEnv);
    VSET(AttachCurrentThreadAsDaemon, v_AttachCurrentThreadAsDaemon);
#undef SET
#undef SETF
#undef VSET

    const char* prim_names[] = {"[Z", "[B", "[C", "[S", "[I", "[J", "[F", "[D"};
    for (int i = 0; i < 8; ++i) {
        jclass c = e->FindClass(prim_names[i]);
        g_prim_classes[static_cast<size_t>(i)] = c ? static_cast<jclass>(e->NewGlobalRef(c)) : nullptr;
        if (c) e->DeleteLocalRef(c);
    }
    if (kNumNatives > g_native_addr.size()) fatal("too many native slots");
    g_slot_config.store(find_native("com/rovio/fusion/NativeApplication", "nativeConfig", "(Ljava/lang/String;)V"));
    g_slot_input.store(find_native("com/rovio/fusion/MyInputHandler", "nativeInput", "(IFFI)V"));
    g_slot_init.store(find_native("com/rovio/fusion/NativeApplication", "nativeInit", "(II)V"));
    g_slot_update.store(find_native("com/rovio/fusion/NativeApplication", "nativeUpdate", "()Z"));
    g_slot_render.store(find_native("com/rovio/fusion/NativeApplication", "nativeRender", "()Z"));
    g_slot_pause.store(find_native("com/rovio/fusion/NativeApplication", "nativePause", "()V"));
    g_slot_resume.store(find_native("com/rovio/fusion/NativeApplication", "nativeResume", "()V"));
    LOGI("JNI bridge ready: env=0x%x vm=0x%x, %zu native trampolines", g_genv, g_gvm, kNumNatives);
}

}  // namespace jni
