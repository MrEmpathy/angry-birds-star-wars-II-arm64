#include "display.h"

#include <android/asset_manager.h>
#include <android/asset_manager_jni.h>
#include <sys/system_properties.h>
#include <time.h>

#include <algorithm>
#include <atomic>
#include <charconv>
#include <cmath>
#include <string>
#include <string_view>

#include "common.h"

namespace display {
namespace {

// The SD game draws its UI from the 1280x800 asset set at native pixel size, so on screens taller
// than ~1080 px it looks proportionally small. Rendering at this height and letting the display
// hardware scale up restores the proportions the game was laid out for.
constexpr int kDefaultRenderHeight = 1080;
constexpr int kMaxRenderHeight = 8192;
constexpr int kCutoutShortEdges = 1;  // WindowManager.LayoutParams.LAYOUT_IN_DISPLAY_CUTOUT_MODE_SHORT_EDGES
// The game draws one frame per display refresh. It was made for 60 Hz screens; on 120 Hz phones an
// uncapped game runs its emulated update and render twice as often, which costs heat.
constexpr int kDefaultMaxFps = 60;
constexpr int kMaxFps = 1000;

// A setting comes from, in order: `adb shell setprop debug.absw.<name> N`, the APK asset absw/<name>
// written by tools/package_apk.py (--render-height, --max-fps), then the default. 0 means "no cap".
struct Setting {
    const char* name;
    int max;
    int fallback;
};
constexpr Setting kRenderHeight{"render_height", kMaxRenderHeight, kDefaultRenderHeight};
constexpr Setting kMaxFrameRate{"max_fps", kMaxFps, kDefaultMaxFps};

std::atomic<float> g_input_scale{1.0f};
std::atomic<uint64_t> g_frame_interval_ns{0};
std::atomic<uint64_t> g_frame_period_ns{1'000'000'000ull / 120};

// A decimal integer in [0, max], optionally newline-terminated.
bool parse_setting(std::string_view s, int max, int* out) {
    if (!s.empty() && s.back() == '\n') s.remove_suffix(1);
    int v = -1;
    auto [end, ec] = std::from_chars(s.data(), s.data() + s.size(), v);
    if (ec != std::errc() || end != s.data() + s.size() || v < 0 || v > max) return false;
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

// The theme's window background (grey) shows until the GL surface draws its first frame, about a second
// on a cold start. A black background makes that wait look like the game's own loading screen.
void black_window_background(JNIEnv* e, jobject act) {
    jobject win = call_obj(e, act, "android/app/Activity", "getWindow", "()Landroid/view/Window;");
    if (!win) return;
    jclass cdc = e->FindClass("android/graphics/drawable/ColorDrawable");
    if (clear(e, "ColorDrawable") || !cdc) return;
    jobject black = e->NewObject(cdc, e->GetMethodID(cdc, "<init>", "(I)V"), static_cast<jint>(0xFF000000));
    if (clear(e, "ColorDrawable()") || !black) return;
    jclass wc = e->FindClass("android/view/Window");
    e->CallVoidMethod(win, e->GetMethodID(wc, "setBackgroundDrawable", "(Landroid/graphics/drawable/Drawable;)V"), black);
    clear(e, "setBackgroundDrawable");
}

int read_setting(JNIEnv* e, jobject act, const Setting& s) {
    std::string prop = std::string("debug.absw.") + s.name;
    char v[PROP_VALUE_MAX] = {};
    int out;
    if (int n = __system_property_get(prop.c_str(), v); n > 0) {
        if (parse_setting({v, static_cast<size_t>(n)}, s.max, &out)) return out;
        LOGW("display: ignoring malformed %s=%s", prop.c_str(), v);
    }
    std::string asset = std::string("absw/") + s.name;
    jobject jam = call_obj(e, act, "android/content/Context", "getAssets", "()Landroid/content/res/AssetManager;");
    AAssetManager* am = jam ? AAssetManager_fromJava(e, jam) : nullptr;
    if (AAsset* a = am ? AAssetManager_open(am, asset.c_str(), AASSET_MODE_BUFFER) : nullptr) {
        char buf[16];
        int n = AAsset_read(a, buf, sizeof buf);
        AAsset_close(a);
        if (n > 0 && parse_setting({buf, static_cast<size_t>(n)}, s.max, &out)) return out;
        LOGW("display: ignoring malformed asset %s", asset.c_str());
    }
    return s.fallback;
}

// Asks the system to run the display at `fps` while the game window is in front, so that eglSwapBuffers
// paces the GL thread at that rate. The frame limiter in pace_frame() covers devices that ignore it.
void limit_frame_rate(JNIEnv* e, jobject act) {
    int fps = read_setting(e, act, kMaxFrameRate);
    if (fps == 0) {
        LOGI("display: frame rate not capped");
        return;
    }
    // A little shorter than the frame period: when the display already runs at `fps`, vsync paces the
    // frames and the limiter never sleeps past a vsync.
    g_frame_period_ns.store(static_cast<uint64_t>(1e9 / fps));
    g_frame_interval_ns.store(static_cast<uint64_t>(1e9 / fps * 0.96));
    jobject win = call_obj(e, act, "android/app/Activity", "getWindow", "()Landroid/view/Window;");
    if (!win) return;
    jobject lp = call_obj(e, win, "android/view/Window", "getAttributes", "()Landroid/view/WindowManager$LayoutParams;");
    if (!lp) return;
    jclass lpc = e->FindClass("android/view/WindowManager$LayoutParams");
    jfieldID f = e->GetFieldID(lpc, "preferredRefreshRate", "F");
    if (clear(e, "preferredRefreshRate") || !f) return;
    e->SetFloatField(lp, f, static_cast<float>(fps));
    jclass wc = e->FindClass("android/view/Window");
    e->CallVoidMethod(win, e->GetMethodID(wc, "setAttributes", "(Landroid/view/WindowManager$LayoutParams;)V"), lp);
    if (!clear(e, "setAttributes")) LOGI("display: frame rate capped at %d fps", fps);
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
    int target = read_setting(e, act, kRenderHeight);
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
        black_window_background(e, act);
        if (sdk_int(e) >= 28) draw_under_cutout(e, act);
        limit_frame_rate(e, act);
        cap_render_height(e, native_app, act);
    }
    e->PopLocalFrame(nullptr);
}

float input_scale() { return g_input_scale.load(std::memory_order_relaxed); }

uint64_t frame_period_ns() { return g_frame_period_ns.load(std::memory_order_relaxed); }

void pace_frame() {
    uint64_t interval = g_frame_interval_ns.load(std::memory_order_relaxed);
    if (!interval) return;
    static thread_local uint64_t next = 0;
    timespec ts{};
    clock_gettime(CLOCK_MONOTONIC, &ts);
    uint64_t now = static_cast<uint64_t>(ts.tv_sec) * 1'000'000'000ull + static_cast<uint64_t>(ts.tv_nsec);
    if (now < next) {
        timespec until{static_cast<time_t>(next / 1'000'000'000ull), static_cast<long>(next % 1'000'000'000ull)};
        clock_nanosleep(CLOCK_MONOTONIC, TIMER_ABSTIME, &until, nullptr);
        now = next;
    }
    next = now + interval;
}

}  // namespace display
