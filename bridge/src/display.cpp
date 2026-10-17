#include "display.h"

#include <android/asset_manager.h>
#include <android/asset_manager_jni.h>
#include <sys/system_properties.h>

#include <algorithm>
#include <atomic>
#include <charconv>
#include <cmath>
#include <string_view>

#include "common.h"

namespace display {
namespace {

// The SD game draws its UI from the 1280x800 asset set at native pixel size, so on screens taller
// than ~1080 px it looks proportionally small. Rendering at this height and letting the display
// hardware scale up restores the proportions the game was laid out for.
constexpr int kDefaultRenderHeight = 1080;
constexpr int kMaxRenderHeight = 8192;
// Per-APK override written by tools/package_apk.py --render-height (e.g. 0 for the HD game, whose
// 2048x1536 UI set already fits 1440p screens).
constexpr const char* kRenderHeightAsset = "absw/render_height";
constexpr int kCutoutShortEdges = 1;  // WindowManager.LayoutParams.LAYOUT_IN_DISPLAY_CUTOUT_MODE_SHORT_EDGES

std::atomic<float> g_input_scale{1.0f};

// A decimal height in [0, kMaxRenderHeight], optionally newline-terminated; 0 turns the cap off.
bool parse_height(std::string_view s, int* out) {
    if (!s.empty() && s.back() == '\n') s.remove_suffix(1);
    int v = -1;
    auto [end, ec] = std::from_chars(s.data(), s.data() + s.size(), v);
    if (ec != std::errc() || end != s.data() + s.size() || v < 0 || v > kMaxRenderHeight) return false;
    *out = v;
    return true;
}

bool clear(JNIEnv* e, const char* what) {
    if (!e->ExceptionCheck()) return false;
    e->ExceptionClear();
    LOGW("display: %s failed", what);
    return true;
}

int sdk_int(JNIEnv* e) {
    jclass v = e->FindClass("android/os/Build$VERSION");
    if (clear(e, "Build.VERSION") || !v) return 0;
    jint sdk = e->GetStaticIntField(v, e->GetStaticFieldID(v, "SDK_INT", "I"));
    clear(e, "SDK_INT");
    return sdk;
}

jobject activity(JNIEnv* e) {
    jclass g = e->FindClass("com/rovio/fusion/Globals");
    if (clear(e, "Globals") || !g) return nullptr;
    jmethodID m = e->GetStaticMethodID(g, "getActivity", "()Landroid/app/Activity;");
    if (clear(e, "getActivity id") || !m) return nullptr;
    jobject a = e->CallStaticObjectMethod(g, m);
    return clear(e, "getActivity") ? nullptr : a;
}

jobject call_obj(JNIEnv* e, jobject o, const char* cls, const char* name, const char* sig) {
    jclass c = e->FindClass(cls);
    if (clear(e, cls) || !c) return nullptr;
    jmethodID m = e->GetMethodID(c, name, sig);
    if (clear(e, name) || !m) return nullptr;
    jobject r = e->CallObjectMethod(o, m);
    return clear(e, name) ? nullptr : r;
}

void draw_under_cutout(JNIEnv* e, jobject act) {
    jobject win = call_obj(e, act, "android/app/Activity", "getWindow", "()Landroid/view/Window;");
    if (!win) return;
    jobject lp = call_obj(e, win, "android/view/Window", "getAttributes", "()Landroid/view/WindowManager$LayoutParams;");
    if (!lp) return;
    jclass lpc = e->FindClass("android/view/WindowManager$LayoutParams");
    jfieldID f = e->GetFieldID(lpc, "layoutInDisplayCutoutMode", "I");
    if (clear(e, "layoutInDisplayCutoutMode") || !f) return;
    e->SetIntField(lp, f, kCutoutShortEdges);
    jclass wc = e->FindClass("android/view/Window");
    e->CallVoidMethod(win, e->GetMethodID(wc, "setAttributes", "(Landroid/view/WindowManager$LayoutParams;)V"), lp);
    if (!clear(e, "setAttributes")) LOGI("display: drawing under the camera cutout");
}

bool apk_render_height(JNIEnv* e, jobject act, int* out) {
    jobject jam = call_obj(e, act, "android/content/Context", "getAssets", "()Landroid/content/res/AssetManager;");
    AAssetManager* am = jam ? AAssetManager_fromJava(e, jam) : nullptr;
    AAsset* a = am ? AAssetManager_open(am, kRenderHeightAsset, AASSET_MODE_BUFFER) : nullptr;
    if (!a) return false;
    char buf[16];
    int n = AAsset_read(a, buf, sizeof buf);
    AAsset_close(a);
    if (n > 0 && parse_height({buf, static_cast<size_t>(n)}, out)) return true;
    LOGW("display: ignoring malformed asset %s", kRenderHeightAsset);
    return false;
}

// debug.absw.render_height (adb shell setprop) wins over the APK's setting, which wins over the default.
int render_height(JNIEnv* e, jobject act) {
    char v[PROP_VALUE_MAX] = {};
    int h;
    if (int n = __system_property_get("debug.absw.render_height", v); n > 0) {
        if (parse_height({v, static_cast<size_t>(n)}, &h)) return h;
        LOGW("display: ignoring malformed debug.absw.render_height=%s", v);
    }
    if (apk_render_height(e, act, &h)) return h;
    return kDefaultRenderHeight;
}

bool real_size(JNIEnv* e, jobject act, int* w, int* h) {
    jobject wm = call_obj(e, act, "android/app/Activity", "getWindowManager", "()Landroid/view/WindowManager;");
    if (!wm) return false;
    jobject d = call_obj(e, wm, "android/view/WindowManager", "getDefaultDisplay", "()Landroid/view/Display;");
    if (!d) return false;
    jclass pc = e->FindClass("android/graphics/Point");
    jobject p = e->NewObject(pc, e->GetMethodID(pc, "<init>", "()V"));
    jclass dc = e->FindClass("android/view/Display");
    e->CallVoidMethod(d, e->GetMethodID(dc, "getRealSize", "(Landroid/graphics/Point;)V"), p);
    if (clear(e, "getRealSize")) return false;
    *w = e->GetIntField(p, e->GetFieldID(pc, "x", "I"));
    *h = e->GetIntField(p, e->GetFieldID(pc, "y", "I"));
    return true;
}

void cap_render_height(JNIEnv* e, jobject native_app, jobject act) {
    int target = render_height(e, act);
    if (target == 0) {
        LOGI("display: rendering at native resolution");
        return;
    }
    int w, h;
    if (!real_size(e, act, &w, &h)) return;
    int lng = std::max(w, h), shrt = std::min(w, h);
    if (shrt <= target) return;
    float s = static_cast<float>(target) / static_cast<float>(shrt);
    int sw = static_cast<int>(std::lround(lng * s)) & ~1, sh = target;

    jclass nac = e->GetObjectClass(native_app);
    jfieldID vf = e->GetFieldID(nac, "c", "Landroid/opengl/GLSurfaceView;");
    if (clear(e, "NativeApplication.c") || !vf) return;
    jobject view = e->GetObjectField(native_app, vf);
    if (!view) return;
    jobject holder = call_obj(e, view, "android/view/SurfaceView", "getHolder", "()Landroid/view/SurfaceHolder;");
    if (!holder) return;
    jclass hc = e->FindClass("android/view/SurfaceHolder");
    e->CallVoidMethod(holder, e->GetMethodID(hc, "setFixedSize", "(II)V"), sw, sh);
    if (clear(e, "setFixedSize")) return;
    g_input_scale.store(s);
    LOGI("display: %dx%d screen, rendering at %dx%d (scale %.3f)", lng, shrt, sw, sh, s);
}

}  // namespace

void on_native_config(JNIEnv* e, jobject native_app) {
    e->PushLocalFrame(32);
    if (jobject act = activity(e)) {
        if (sdk_int(e) >= 28) draw_under_cutout(e, act);
        cap_render_height(e, native_app, act);
    }
    e->PopLocalFrame(nullptr);
}

float input_scale() { return g_input_scale.load(std::memory_order_relaxed); }

}  // namespace display
