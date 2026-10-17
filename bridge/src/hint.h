// Android Dynamic Performance Framework (ADPF) hints for the rendering thread.
#pragma once

#include <cstdint>

namespace hint {

// Called on the rendering thread after each frame with the thread CPU time the frame took. The first call
// opens a performance hint session for that thread (Android 13+), with the frame period as the target.
// adb shell setprop debug.absw.adpf 0 disables it.
void frame_done(uint64_t cpu_ns);

}  // namespace hint
