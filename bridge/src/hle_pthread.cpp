// pthread imports. Guest sync objects (4-byte bionic words) hold a tagged index of a host object.
#include <pthread.h>
#include <sched.h>
#include <time.h>
#include <unistd.h>

#include <array>
#include <cstdio>
#include <atomic>
#include <memory>
#include <mutex>
#include <unordered_map>

#include "elf32.h"
#include "hle.h"

namespace {

using arena::hp;

constexpr uint32_t kTag = 0x80000000u;
constexpr uint32_t kChunk = 4096, kChunks = 4096;

// Lock-free indexed storage for host objects referenced from guest words.
template <typename T>
class Table {
public:
    uint32_t add(T* obj) {
        std::lock_guard l(mu_);
        uint32_t idx = next_++;
        if (idx >= kChunk * kChunks) fatal("sync object table full");
        auto& chunk = chunks_[idx / kChunk];
        if (!chunk.load()) chunk.store(new std::atomic<T*>[kChunk]());
        chunk.load()[idx % kChunk].store(obj, std::memory_order_release);
        return idx;
    }
    T* get(uint32_t idx) {
        if (idx >= kChunk * kChunks) return nullptr;
        auto* chunk = chunks_[idx / kChunk].load(std::memory_order_acquire);
        return chunk ? chunk[idx % kChunk].load(std::memory_order_acquire) : nullptr;
    }

private:
    std::mutex mu_;
    uint32_t next_ = 1;
    std::array<std::atomic<std::atomic<T*>*>, kChunks> chunks_{};
};

struct Mutex { pthread_mutex_t m; };
struct Cond { pthread_cond_t c; };

// Android 4.x bionic rwlock semantics: the write owner may re-acquire for reading or writing
// (modern bionic returns EDEADLK there); waiting writers block new readers.
struct RwLock {
    pthread_mutex_t m = PTHREAD_MUTEX_INITIALIZER;
    pthread_cond_t c = PTHREAD_COND_INITIALIZER;
    int num_locks = 0;
    pid_t writer = 0;
    int pending_writers = 0;

    bool can_read(pid_t tid) const { return pending_writers == 0 && (writer == 0 || writer == tid); }
    bool can_write(pid_t tid) const { return num_locks == 0 || writer == tid; }

    int rdlock() {
        pid_t tid = gettid();
        pthread_mutex_lock(&m);
        while (!can_read(tid)) pthread_cond_wait(&c, &m);
        ++num_locks;
        pthread_mutex_unlock(&m);
        return 0;
    }
    int wrlock() {
        pid_t tid = gettid();
        pthread_mutex_lock(&m);
        ++pending_writers;
        while (!can_write(tid)) pthread_cond_wait(&c, &m);
        --pending_writers;
        ++num_locks;
        writer = tid;
        pthread_mutex_unlock(&m);
        return 0;
    }
    int unlock() {
        pthread_mutex_lock(&m);
        int r = 0;
        if (num_locks == 0) {
            r = EPERM;
        } else if (writer == 0) {
            if (--num_locks == 0) pthread_cond_broadcast(&c);
        } else if (writer != gettid()) {
            r = EPERM;
        } else if (--num_locks == 0) {
            writer = 0;
            pthread_cond_broadcast(&c);
        }
        pthread_mutex_unlock(&m);
        return r;
    }
};

int32_t checked(int32_t r, const char* what, cpu::Ctx* c) {
    if (r == EDEADLK) LOGW("%s returned EDEADLK (caller %s)", what, c ? elf::describe(c->r(14)).c_str() : "?");
    return r;
}
Table<Mutex> g_mutexes;
Table<Cond> g_conds;
Table<RwLock> g_rwlocks;

Mutex* new_mutex(uint32_t kind_word) {
    auto* m = new Mutex;
    pthread_mutexattr_t a;
    pthread_mutexattr_init(&a);
    if (kind_word == 0x4000) pthread_mutexattr_settype(&a, PTHREAD_MUTEX_RECURSIVE);
    else if (kind_word == 0x8000) pthread_mutexattr_settype(&a, PTHREAD_MUTEX_ERRORCHECK);
    pthread_mutex_init(&m->m, &a);
    pthread_mutexattr_destroy(&a);
    return m;
}
Cond* new_cond(uint32_t) {
    auto* c = new Cond;
    pthread_condattr_t a;
    pthread_condattr_init(&a);
    pthread_condattr_setclock(&a, CLOCK_MONOTONIC);
    pthread_cond_init(&c->c, &a);
    pthread_condattr_destroy(&a);
    return c;
}
RwLock* new_rwlock(uint32_t) { return new RwLock; }

// Resolve the host object for a guest word, creating it from a static initializer on first use.
template <typename T, T* (*Make)(uint32_t)>
T* object(Table<T>& table, uint32_t addr) {
    auto* word = reinterpret_cast<std::atomic<uint32_t>*>(hp<uint32_t>(addr));
    for (;;) {
        uint32_t w = word->load(std::memory_order_acquire);
        if (w & kTag) {
            if (T* obj = table.get(w & ~kTag)) return obj;
        }
        T* obj = Make(w);
        uint32_t tagged = table.add(obj) | kTag;
        if (word->compare_exchange_strong(w, tagged)) return obj;
    }
}
template <typename T>
void install(Table<T>& table, uint32_t addr, T* obj) {
    *hp<uint32_t>(addr) = table.add(obj) | kTag;
}

int32_t g_mutex_init(GPtr<uint32_t> m, GPtr<const uint32_t> attr) {
    uint32_t kind = 0;
    if (attr) {  // bionic 32-bit mutexattr: type in the low bits (0 normal, 1 recursive, 2 errorcheck)
        uint32_t t = *attr.h() & 3;
        kind = t == 1 ? 0x4000 : t == 2 ? 0x8000 : 0;
    }
    install(g_mutexes, m.a, new_mutex(kind));
    return 0;
}
int32_t g_mutex_destroy(GPtr<uint32_t>) { return 0; }
int32_t g_mutex_lock(cpu::Ctx* c, GPtr<uint32_t> m) {
    return checked(pthread_mutex_lock(&object<Mutex, new_mutex>(g_mutexes, m.a)->m), "pthread_mutex_lock", c);
}
int32_t g_mutex_trylock(GPtr<uint32_t> m) { return pthread_mutex_trylock(&object<Mutex, new_mutex>(g_mutexes, m.a)->m); }
int32_t g_mutex_unlock(GPtr<uint32_t> m) { return pthread_mutex_unlock(&object<Mutex, new_mutex>(g_mutexes, m.a)->m); }
int32_t g_mutexattr_init(GPtr<uint32_t> a) { *a.h() = 0; return 0; }
int32_t g_mutexattr_destroy(GPtr<uint32_t>) { return 0; }
int32_t g_mutexattr_settype(GPtr<uint32_t> a, int32_t t) { *a.h() = static_cast<uint32_t>(t) & 3; return 0; }

int32_t g_cond_init(GPtr<uint32_t> c, GPtr<const void>) { install(g_conds, c.a, new_cond(0)); return 0; }
int32_t g_cond_destroy(GPtr<uint32_t>) { return 0; }
int32_t g_cond_signal(GPtr<uint32_t> c) { return pthread_cond_signal(&object<Cond, new_cond>(g_conds, c.a)->c); }
int32_t g_cond_broadcast(GPtr<uint32_t> c) { return pthread_cond_broadcast(&object<Cond, new_cond>(g_conds, c.a)->c); }
int32_t g_cond_wait(GPtr<uint32_t> c, GPtr<uint32_t> m) {
    return pthread_cond_wait(&object<Cond, new_cond>(g_conds, c.a)->c, &object<Mutex, new_mutex>(g_mutexes, m.a)->m);
}
int32_t timed_wait(uint32_t c, uint32_t m, const int32_t* abs, clockid_t base) {
    struct timespec ts{abs[0], abs[1]};
    if (base == CLOCK_REALTIME) {  // host conds wait on CLOCK_MONOTONIC
        struct timespec now_rt, now_mono;
        clock_gettime(CLOCK_REALTIME, &now_rt);
        clock_gettime(CLOCK_MONOTONIC, &now_mono);
        int64_t delta = (int64_t{ts.tv_sec} - now_rt.tv_sec) * 1000000000LL + (ts.tv_nsec - now_rt.tv_nsec);
        int64_t target = int64_t{now_mono.tv_sec} * 1000000000LL + now_mono.tv_nsec + (delta > 0 ? delta : 0);
        ts = {static_cast<time_t>(target / 1000000000LL), static_cast<long>(target % 1000000000LL)};
    }
    return pthread_cond_timedwait(&object<Cond, new_cond>(g_conds, c)->c, &object<Mutex, new_mutex>(g_mutexes, m)->m, &ts);
}
int32_t g_cond_timedwait_monotonic(GPtr<uint32_t> c, GPtr<uint32_t> m, GPtr<const int32_t> abs) {
    return timed_wait(c.a, m.a, abs.h(), CLOCK_MONOTONIC);
}
int32_t g_cond_timedwait(GPtr<uint32_t> c, GPtr<uint32_t> m, GPtr<const int32_t> abs) {
    return timed_wait(c.a, m.a, abs.h(), CLOCK_REALTIME);
}
int32_t g_condattr_init(GPtr<uint32_t> a) { *a.h() = 0; return 0; }
int32_t g_condattr_destroy(GPtr<uint32_t>) { return 0; }

int32_t g_rwlock_init(GPtr<uint32_t> l, GPtr<const void>) { install(g_rwlocks, l.a, new_rwlock(0)); return 0; }
int32_t g_rwlock_destroy(GPtr<uint32_t>) { return 0; }
int32_t g_rwlock_rdlock(GPtr<uint32_t> l) { return object<RwLock, new_rwlock>(g_rwlocks, l.a)->rdlock(); }
int32_t g_rwlock_wrlock(GPtr<uint32_t> l) { return object<RwLock, new_rwlock>(g_rwlocks, l.a)->wrlock(); }
int32_t g_rwlock_unlock(GPtr<uint32_t> l) { return object<RwLock, new_rwlock>(g_rwlocks, l.a)->unlock(); }

// ---------------------------------------------------------------- thread-specific data
constexpr uint32_t kMaxKeys = 256;
std::atomic<uint32_t> g_next_key{1};
std::array<std::atomic<uint32_t>, kMaxKeys> g_key_dtor{};
thread_local std::array<uint32_t, kMaxKeys> t_values{};

int32_t g_key_create(GPtr<uint32_t> key, uint32_t dtor) {
    uint32_t k = g_next_key.fetch_add(1);
    if (k >= kMaxKeys) return EAGAIN;
    g_key_dtor[k].store(dtor);
    *key.h() = k;
    return 0;
}
int32_t g_key_delete(uint32_t k) {
    if (k < kMaxKeys) g_key_dtor[k].store(0);
    return 0;
}
uint32_t g_getspecific(uint32_t k) { return k < kMaxKeys ? t_values[k] : 0; }
int32_t g_setspecific(uint32_t k, uint32_t v) {
    if (k >= kMaxKeys) return EINVAL;
    t_values[k] = v;
    return 0;
}
void run_key_destructors() {
    for (int round = 0; round < 4; ++round) {
        bool any = false;
        for (uint32_t k = 1; k < kMaxKeys; ++k) {
            uint32_t v = t_values[k], d = g_key_dtor[k].load();
            if (v && d) {
                t_values[k] = 0;
                any = true;
                cpu::call(d, {v});
            }
        }
        if (!any) break;
    }
}

// ---------------------------------------------------------------- threads
struct GThread {
    uint32_t id;
    pthread_t host{};
    uint32_t start = 0, arg = 0, result = 0;
};
std::mutex g_thr_mu;
std::unordered_map<uint32_t, std::shared_ptr<GThread>> g_threads;
uint32_t g_next_tid = 0x1000;
thread_local uint32_t t_self = 0;

uint32_t register_current() {
    std::lock_guard l(g_thr_mu);
    auto t = std::make_shared<GThread>();
    t->id = g_next_tid++;
    t->host = pthread_self();
    g_threads[t->id] = t;
    return t->id;
}
std::shared_ptr<GThread> find_thread(uint32_t id) {
    std::lock_guard l(g_thr_mu);
    auto it = g_threads.find(id);
    return it == g_threads.end() ? nullptr : it->second;
}

void* thread_main(void* p) {
    auto t = *static_cast<std::shared_ptr<GThread>*>(p);
    delete static_cast<std::shared_ptr<GThread>*>(p);
    t_self = t->id;
    char name[16];
    snprintf(name, sizeof name, "absw2-g%x", t->id);  // otherwise the kernel keeps the creator's name
    pthread_setname_np(pthread_self(), name);
    t->result = cpu::run_thread_entry(t->start, t->arg);
    run_key_destructors();
    return nullptr;
}

int32_t g_pthread_create(GPtr<uint32_t> out, GPtr<const uint32_t> attr, uint32_t start, uint32_t arg) {
    auto t = std::make_shared<GThread>();
    t->start = start;
    t->arg = arg;
    {
        std::lock_guard l(g_thr_mu);
        t->id = g_next_tid++;
        g_threads[t->id] = t;
    }
    pthread_attr_t a;
    pthread_attr_init(&a);
    pthread_attr_setstacksize(&a, 512 * 1024);  // host side only runs the JIT loop and imports
    if (attr && (attr.h()[0] & 1)) pthread_attr_setdetachstate(&a, PTHREAD_CREATE_DETACHED);
    *out.h() = t->id;
    int r = pthread_create(&t->host, &a, thread_main, new std::shared_ptr<GThread>(t));
    pthread_attr_destroy(&a);
    return r;
}
int32_t g_pthread_join(cpu::Ctx* c, uint32_t id, GPtr<uint32_t> ret) {
    auto t = find_thread(id);
    if (!t) return ESRCH;
    if (pthread_equal(t->host, pthread_self())) {
        // A thread joins itself when it drops the last owner of the object that owns it: the Rovio cloud
        // SDK's HTTP reactor is released by its own event loop (with the reactor's mutex held) when a request
        // fails, and its destructor stops the loop and joins the loop's thread. That is a race in the game;
        // on Android, pthread_join returns EDEADLK and libstdc++ throws from the destructor (std::terminate).
        // Returning as if joined let the destructor free the reactor while the loop further down this stack
        // still used it, which crashed a few hundred milliseconds later. The thread is parked instead: the
        // rest of the destructor never runs, so the object leaks with its mutex held, but no other thread can
        // reach that object any more.
        LOGW("self-join of guest thread 0x%x (entry %s, joined from %s): parking the thread", id,
             elf::describe(t->start).c_str(), elf::describe(c->r(14)).c_str());
        cpu::log_guest_stack(c->r(13), 160);
        for (;;) pause();
    }
    int r = checked(pthread_join(t->host, nullptr), "pthread_join", c);
    if (r == 0 && ret) *ret.h() = t->result;
    std::lock_guard l(g_thr_mu);
    g_threads.erase(id);
    return r;
}
int32_t g_pthread_detach(uint32_t id) {
    auto t = find_thread(id);
    return t ? pthread_detach(t->host) : ESRCH;
}
uint32_t g_pthread_self() {
    if (!t_self) t_self = register_current();
    return t_self;
}
int32_t g_pthread_equal(uint32_t a, uint32_t b) { return a == b; }
int32_t g_pthread_getschedparam(uint32_t, GPtr<int32_t> policy, GPtr<int32_t> param) {
    if (policy) *policy.h() = SCHED_OTHER;
    if (param) *param.h() = 0;
    return 0;
}
int32_t g_pthread_setschedparam(uint32_t, int32_t, GPtr<const int32_t>) { return 0; }
int32_t g_pthread_setname_np(uint32_t id, GStr name) {
    auto t = find_thread(id);
    if (!t) return 0;
    char n[16];
    snprintf(n, sizeof n, "%s", name.h());
    return pthread_setname_np(t->host, n);
}

const hle::Def kDefs[] = {
    H("pthread_mutex_init", g_mutex_init), H("pthread_mutex_destroy", g_mutex_destroy),
    H("pthread_mutex_lock", g_mutex_lock), H("pthread_mutex_trylock", g_mutex_trylock),
    H("pthread_mutex_unlock", g_mutex_unlock), H("pthread_mutexattr_init", g_mutexattr_init),
    H("pthread_mutexattr_destroy", g_mutexattr_destroy), H("pthread_mutexattr_settype", g_mutexattr_settype),
    H("pthread_cond_init", g_cond_init), H("pthread_cond_destroy", g_cond_destroy),
    H("pthread_cond_signal", g_cond_signal), H("pthread_cond_broadcast", g_cond_broadcast),
    H("pthread_cond_wait", g_cond_wait), H("pthread_cond_timedwait_monotonic", g_cond_timedwait_monotonic),
    H("pthread_cond_timedwait", g_cond_timedwait), H("pthread_condattr_init", g_condattr_init),
    H("pthread_condattr_destroy", g_condattr_destroy),
    H("pthread_rwlock_init", g_rwlock_init), H("pthread_rwlock_destroy", g_rwlock_destroy),
    H("pthread_rwlock_rdlock", g_rwlock_rdlock), H("pthread_rwlock_wrlock", g_rwlock_wrlock),
    H("pthread_rwlock_unlock", g_rwlock_unlock),
    H("pthread_key_create", g_key_create), H("pthread_key_delete", g_key_delete),
    H("pthread_getspecific", g_getspecific), H("pthread_setspecific", g_setspecific),
    H("pthread_create", g_pthread_create), H("pthread_join", g_pthread_join), H("pthread_detach", g_pthread_detach),
    H("pthread_self", g_pthread_self), H("pthread_equal", g_pthread_equal),
    H("pthread_getschedparam", g_pthread_getschedparam), H("pthread_setschedparam", g_pthread_setschedparam),
    H("pthread_setname_np", g_pthread_setname_np),
};

}  // namespace

void hle::register_pthread() { add_defs(kDefs, std::size(kDefs)); }
