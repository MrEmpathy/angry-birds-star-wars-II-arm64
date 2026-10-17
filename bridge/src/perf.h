// Startup timeline (always logged) and an optional per-frame profile.
// The profile is off unless `adb shell setprop debug.absw.perf 1` is set before the app starts.
#pragma once

#include <cstdint>

namespace perf {

void init();
bool enabled();
uint64_t now_ns();

// Logs "startup: <what> at <ms> ms" measured from the start of the process.
void mark(const char* what);

// Time spent in one import thunk (profile only).
void hle_call(uint32_t thunk_index, uint64_t ns);

// One host->guest native call finished (profile only). Frames are counted on nativeRender, and a
// summary is logged every few seconds from the thread that renders.
enum class Native { kUpdate, kRender };
void native_call(Native kind, uint64_t wall_ns, uint64_t cpu_ns, uint64_t hle_ns);

// Profile only: start sampling the calling thread now (it must be the thread that later renders), and
// log the samples collected so far under `label`.
void sample_this_thread();
void report_samples_now(const char* label);

// Import time accumulated on the calling thread, for per-call deltas.
uint64_t thread_hle_ns();
uint64_t thread_cpu_ns();

}  // namespace perf
