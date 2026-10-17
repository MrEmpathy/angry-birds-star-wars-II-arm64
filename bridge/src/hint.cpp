#include "hint.h"

#include <dlfcn.h>
#include <sys/system_properties.h>
#include <unistd.h>

#include "common.h"
#include "display.h"

namespace hint {
namespace {

// libandroid.so, Android 13+ (APerformanceHint_*) and Android 15+ (setPreferPowerEfficiency). The bridge
// targets API 26, so the functions are looked up at run time.
struct Manager;
struct Session;
using GetManagerFn = Manager* (*)();
using CreateSessionFn = Session* (*)(Manager*, const int32_t*, size_t, int64_t);
using ReportFn = int (*)(Session*, int64_t);
using PreferEfficiencyFn = int (*)(Session*, bool);

enum class State { kUnset, kOn, kOff };
State g_state = State::kUnset;  // touched only by the rendering thread
pid_t g_tid = 0;
Session* g_session = nullptr;
ReportFn g_report = nullptr;

bool enabled_by_property() {
    char v[PROP_VALUE_MAX] = {};
    return !(__system_property_get("debug.absw.adpf", v) > 0 && v[0] == '0');
}

void open_session() {
    g_state = State::kOff;
    if (!enabled_by_property()) {
        LOGI("adpf: off (debug.absw.adpf=0)");
        return;
    }
    void* lib = dlopen("libandroid.so", RTLD_NOW);
    auto get_manager = lib ? reinterpret_cast<GetManagerFn>(dlsym(lib, "APerformanceHint_getManager")) : nullptr;
    auto create = lib ? reinterpret_cast<CreateSessionFn>(dlsym(lib, "APerformanceHint_createSession")) : nullptr;
    g_report = lib ? reinterpret_cast<ReportFn>(dlsym(lib, "APerformanceHint_reportActualWorkDuration")) : nullptr;
    Manager* manager = get_manager ? get_manager() : nullptr;
    if (!manager || !create || !g_report) {
        LOGI("adpf: not available on this device");
        return;
    }
    const int32_t tid = g_tid = gettid();
    const int64_t target = static_cast<int64_t>(display::frame_period_ns());
    g_session = create(manager, &tid, 1, target);
    if (!g_session) {
        LOGW("adpf: createSession failed");
        return;
    }
    bool efficient = false;
    if (auto prefer = reinterpret_cast<PreferEfficiencyFn>(dlsym(lib, "APerformanceHint_setPreferPowerEfficiency")))
        efficient = prefer(g_session, true) == 0;
    g_state = State::kOn;
    LOGI("adpf: session for tid %d, target %.2f ms%s", tid, target / 1e6, efficient ? ", prefer power efficiency" : "");
}

}  // namespace

void frame_done(uint64_t cpu_ns) {
    if (g_state == State::kUnset) open_session();
    if (g_state == State::kOn && cpu_ns > 0 && gettid() == g_tid) g_report(g_session, static_cast<int64_t>(cpu_ns));
}

}  // namespace hint
