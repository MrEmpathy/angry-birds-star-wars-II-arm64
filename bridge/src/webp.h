// Host (arm64/x86_64) WebP decoding for the engine's textures.
#pragma once

namespace elf {
struct Module;
}

namespace webp {

// Redirects the game's WebPDecode (its own copy of libwebp, compiled for ARM32) to the platform's native
// decoder, Android's AImageDecoder (Android 11+). Calls the decoder cannot serve exactly the same way run
// the original guest code. Call it after loading the module and before running any of its code.
// adb shell setprop debug.absw.native_webp 0 keeps the original decoder (from the next launch).
void install(elf::Module* game);

}  // namespace webp
