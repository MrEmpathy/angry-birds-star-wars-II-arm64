// Display adaptation for modern phones: draw under the camera cutout and cap the render height.
#pragma once

#include <jni.h>

#include <cstdint>

namespace display {

// Called on the UI thread from the NativeApplication.nativeConfig trampoline, before the guest runs.
void on_native_config(JNIEnv* env, jobject native_app);

// Factor from view (touch) coordinates to GL surface coordinates; 1 when not scaling.
float input_scale();

// Called on the GL thread before each nativeRender: sleeps when frames come faster than the cap.
void pace_frame();

// Target frame period: 1 s / frame rate cap, or 1/120 s when uncapped.
uint64_t frame_period_ns();

}  // namespace display
