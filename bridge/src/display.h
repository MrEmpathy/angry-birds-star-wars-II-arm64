// Display adaptation for modern phones: draw under the camera cutout and cap the render height.
#pragma once

#include <jni.h>

namespace display {

// Called on the UI thread from the NativeApplication.nativeConfig trampoline, before the guest runs.
void on_native_config(JNIEnv* env, jobject native_app);

// Factor from view (touch) coordinates to GL surface coordinates; 1 when not scaling.
float input_scale();

}  // namespace display
