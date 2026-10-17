// First-run copy of the files the game used to download from Rovio's asset service.
#pragma once

#include <jni.h>

namespace seed {

// Copies every file listed in the APK asset absw2/seed.list from absw2/files/<path> to
// <filesDir>/<path> when <filesDir>/<path> does not exist yet. Existing files are never replaced.
// Called from JNI_OnLoad, before the guest engine starts.
void copy_missing_files(JNIEnv* env);

}  // namespace seed
