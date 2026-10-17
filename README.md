# angry-birds-star-wars-II-arm64

Personal tooling to run **Angry Birds Star Wars II 1.9.25** (your own copy) on 64-bit-only Android phones,
such as the Galaxy S26 Ultra, whose CPUs cannot run the game's 32-bit ARM engine. The game works offline
with the files it used to download from Rovio's servers, which are now shut down.

Nothing here contains Rovio code, assets or keys. The build reads them from your own files on your machine.
Do not distribute the generated APK or anything under `original/`, `work/` or `keystore/`.

## Inputs (`original/`, never committed)

| File | What it is |
| --- | --- |
| `absw2_ads_1.9.25.apk` | `com.rovio.angrybirdsstarwarsii.ads` 1.9.25, unmodified (Internet Archive item `absw-2-full`, `ABSW2_base.apk`) |
| `absw2_ads_files.zip` | `/data/data/com.rovio.angrybirdsstarwarsii.ads/files` from a device that had finished the first-run download (same item, `files.zip`) |

`AngryBirdsStarWarsIIWebPit_1-9-25.apk` (`com.rovio.angrybirdsstarwarsii.wph`) is **not** used. It is a
third-party rebuild: its engine and `game.lua` point the Rovio cloud URLs (`https://cloud.rovio.com`,
`https://mist.rovio.com`) and the Facebook Graph URL to private servers (`147.45.197.213:7873`,
`85.31.230.110:81`). Its other changes are useful as a reference: it turns the asset downloads off,
ships the downloaded audio and images inside the APK, and removes the level-end video ad button.

## How it works

`bridge/` is the ARM32 bridge from the Angry Birds Star Wars (1) port, unchanged in design: a 64-bit
`libAngryBirdsStarWarsII.so` that runs the original `armeabi-v7a` engine with dynarmic, services its imports on
the host and gives it a synthetic 32-bit JNI. The ABSW2 engine needs the same imports as ABSW1 plus six
(`_exit`, `ftruncate`, `mkstemp`, `uname`, already-present `__page_size` and `__android_log_write`), and the
DEX has the same 92 native methods plus `HockeyAppWrapper.setUpBreakpad`.

The AdColony libraries (`libadcolony.so`, `libjs.so`) are dropped: they are 32-bit only, and the SDK's Java
loader catches the load failure.

### What the game downloaded, and how this build replaces it

The sounds and some level backgrounds are not in the APK (the sound asset is named `sounds_1_8_0`, so the
split probably dates from 1.8.0). On first start the game logged in to Rovio ID (`cloud.rovio.com`),
downloaded them through Rovio's asset service and cached them in `files/assets_service/`:

| Asset | Content | Without it |
| --- | --- | --- |
| `16000hz-16bit-mono.7z` | 717 MP3 (music, effects) | "Downloading failed" on first start |
| `images.7z` | 12 PVR backgrounds (Naboo, Trade Federation) | same |
| `ShopData`, `quests`, `RewardData`, `CameraData`, `UpdateData`, `SamsungDeviceData` | Lua tables, AES-encrypted | the APK's packaged defaults |

When the service does not answer, `StartSequencePage` only continues if `settings.lua` already holds the MD5
of both archives (`assetData`). That is why a fresh install is unplayable, and why copying a device's `files/`
folder (as the Internet Archive item suggests, which needs root) brings it back.

This build needs neither root nor the previous player's save:

- **Sounds and images go inside the APK.** With `downloadSoundAssets` and `downloadVisualAssets` off, the same
  engine reads sounds from `data/audio/` and images from `data/images/android/`. `tools/stage_cloud_data.py`
  writes the unpacked archives there, and `bridge/lua/offline/menus/StartSequencePage.lua` turns the two
  downloads off before the start page runs. `package_apk.py` rebuilds `assets/assets.list`, the engine's index of
  APK assets.
- **Cloud data is copied on first start.** The engine reads `files/assets_service/<name>` directly when the
  service is unavailable (`loadCloudAssetFile` → `native_loadTextFileToLuaTable(path, true)`, which decrypts with
  a key built into the engine). The bridge copies the six files from the APK (`assets/absw2/files/`, listed in
  `assets/absw2/seed.list`) into the app's files directory before the engine starts, only when they are
  missing (`bridge/src/seed.cpp`). This keeps the game on the last data the
  service sent, but for 1.9.25 it is close to optional: the APK packages defaults for these files, and the
  checked parts match the cached copies (the 16 timed level openings and their December 2014 dates in
  `RewardData`, the 121 quest names, the 61 shop item IDs). Values inside those entries were not compared.
- **Rovio ID failures no longer loop.** Every login now fails (`ERROR_ACCOUNT_INVALID`), and the original
  `onLoginFailure` then forces a logout, which shows "Signed out" and restarts the login, forever.
  `bridge/lua/offline/rovioid/RovioAccount.lua` runs `onLoginFailure` with `forcedLogout` disabled, so the
  player stays a guest.

Not used from `files.zip`: `settings.lua`, `bi_data.lua`, the purchase files (the previous player's progress),
`fusion.registry` (that device's Rovio ID refresh token and profile) and the Flurry/HockeyApp queues.

### File formats (all AES-256-CBC with a zero IV; keys are recovered from your APK at build time)

| Files | Plaintext | Key |
| --- | --- | --- |
| APK `*.lua`, `*.json` | `\x89LZMA` + LZMA-alone, or a one-file 7z | byte-immediate stores in the engine |
| saves (`settings.lua`, …) | Lua table source, PKCS#7 | byte-immediate stores |
| `fusion.registry` | JSON, then filler bytes | byte-immediate stores (`RegistryAccessor::decrypt`) |
| `assets_service/<data>` | Lua table source, PKCS#7 | 32-character string constant |

`tools/absw2_assets.py <apk> <out> [--data files.zip]` decodes all of them for inspection.

## Build (WSL for the bridge, Git Bash for packaging)

```
bash tools/setup_toolchain.sh                     # NDK r27d, CMake, Ninja, Boost, dynarmic (in WSL, under ~/tools)
bash bridge/tools/make_release.sh                 # -> dist/AngryBirdsStarWarsII-arm64.apk
bash bridge/tools/make_release.sh x86_64          # emulator build -> test-out/
bash bridge/tools/dev_cycle.sh x86_64             # build, install, launch, filtered log
```

The APK is signed with `keystore/absw2-local.keystore` (created on first build). Keep it: Android only
installs an update over an existing install when the signature matches. The package name is unchanged, so
this build replaces any other copy of `com.rovio.angrybirdsstarwarsii.ads`.

### Display

The bridge's display code (`bridge/src/display.cpp`) is unchanged from ABSW1: the window draws under the camera
cutout, and the GL surface height can be capped. ABSW2 has a single `android` asset profile and lays its UI
out for the screen size. On a 3120x1440 screen the menus look the same with a 1080 px cap and without one, so
`make_release.sh` writes `--render-height 0` (native resolution). `RENDER_HEIGHT=1080` or
`adb shell setprop debug.absw.render_height 1080` brings the cap back if a phone needs fewer pixels.

### Threads and JIT caches

Each host thread that runs guest code has its own dynarmic JIT. The game logic runs on the Java thread
`GraphicsThread`, which gets a 96 MiB code cache. Other Java threads get 32 MiB, and the guest's own threads
get 16 MiB. Guest threads are renamed `absw2-g<id>`; otherwise the kernel keeps the creator's name. Before
this change, about 15 worker threads each reserved 96 MiB.

### Performance and heat

The release build runs at the screen's native resolution and up to 120 frames per second. Measured on a
Galaxy S26 Ultra (Android 16, 3120x1440, adaptive 120 Hz) in Naboo 1-1, firing a bird every 10 s, 3 minutes
per run, with the rendering thread kept on cores 0-5 (one cluster, one clock) so that runs compare:

| JIT code generation | Rendering thread, cycles per second | CPU time per frame | Core clock |
| --- | --- | --- | --- |
| Fast dispatch only (two runs) | 2363 M, 2412 M | 6.24 ms, 6.23 ms | 3.2 GHz |
| + relaxed halt check | 2364 M | 6.37 ms | 3.1 GHz |
| + host FPSR | 1975 M | 5.93 ms | 2.8 GHz |
| + host FPSR + relaxed halt check (release, three runs) | 1924 M, 1890 M, 1889 M | 5.92, 5.85, 5.89 ms | 2.7 GHz |

Cycles are thread CPU time multiplied by the sampled clock of the core the thread ran on (Android does not
let apps open hardware counters). CPU time alone hides most of the gain: with less work the governor lowers
the clock, so the thread stays similarly busy at a lower frequency and voltage.

- **Host FPSR** (dynarmic patch 5, `OptimizationFlag::Unsafe_HostFpsr`). Upstream clears the host FPSR before
  the floating-point instructions of every block and merges it back afterwards, so that the guest's
  cumulative exception flags are exact. Writing FPSR serializes the pipeline: in the instruction-level profile
  (below) the instruction at or right after `msr fpsr` was about a quarter of the rendering thread's samples, mostly in the
  Lua interpreter, whose numbers are floats. The patch keeps the guest's flags in the host FPSR while JIT code
  runs. The game never reads or writes FPSCR except the compare flags (`vmrs APSR_nzcv, fpscr`, 2602 sites,
  kept apart), so nothing it can observe changes.
- **Relaxed halt check** (dynarmic patch 6). The halt checks between blocks used `ldar`, at 10% of the
  samples; a plain load is enough there. Alone it is within noise; with the host FPSR it saves about 4% more.
- **Fast dispatch in dynarmic's arm64 backend** (patches 2 and 3). Upstream leaves `FastDispatchHint`
  unimplemented on arm64, and A32 ALU writes to PC (`addls pc, pc, rN, lsl #2`, the jump tables of `switch`
  statements) always went through `ReturnToDispatch`. Every bytecode of the game's Lua interpreter
  (`luaV_execute`, the hottest guest code) took that path: a call into C++ and a hash map lookup, 15-18% of the
  rendering thread. A per-JIT direct-mapped cache now resolves these branches in emitted code.
- **Native WebP decoding** (`bridge/src/webp.cpp`). The engine decodes its WebP textures with its own ARM32
  copy of libwebp 0.5 through `WebPDecode`. The bridge redirects that function to Android's `AImageDecoder`
  (the platform's arm64 libwebp) and converts to the requested pixel layout. Calls it cannot serve the same
  way (other output modes, decoding options, ICC or EXIF data, animation) run the original code. Cold start to
  the first frame: 958 ms instead of 1212 ms (three starts each); the first 7 images take 112 ms instead of
  about 460 ms. `adb shell setprop debug.absw.native_webp 2` decodes every image both ways and logs the
  difference: 0 bytes in all 13 images of the menu and Naboo 1-1.
- **ADPF** (`bridge/src/hint.cpp`). The rendering thread reports each frame's CPU time to a performance hint
  session (Android 13+) with the frame period as the target, preferring power efficiency (Android 15+).
  About 7% fewer cycles at 120 fps in one comparison. `debug.absw.adpf 0` turns it off.
- **Frame rate** (`bridge/src/display.cpp`). The window asks the display for the frame rate in the APK asset
  `absw/max_fps` (`make_release.sh` writes 120; `MAX_FPS=60` for less heat), and `pace_frame` caps the GL
  thread there if a device ignores the request. `adb shell setprop debug.absw.max_fps N` overrides it; 0 turns
  the cap off.
- **Read-only guest memory** (`IsReadOnlyMemory`): code, `.rodata` and the relocated GOT are reported as
  constant, so the JIT can fold literal-pool loads.
- **Black window background** while the engine starts, instead of the theme's grey.

Each code generation change can be turned off for measurements from the next launch:
`adb shell setprop debug.absw.jit_host_fpsr 0`, `debug.absw.jit_relaxed_halt 0`, `debug.absw.jit_fast_dispatch 0`
(the bridge logs `jit: code generation options turned off: ...`).

### Profiling

`adb shell setprop debug.absw.perf 1`, then restart the game. Every 5 s the bridge logs frames per second, CPU
and import time per frame, process CPU, the most expensive imports and a sampling profile of the rendering
thread (1 ms of its CPU time per sample): guest JIT blocks as `libAngryBirdsStarWarsII.so+offset` (map them to
functions with Ghidra; the image base there is 0x10000), host libraries, and offsets inside the bridge
(`llvm-symbolizer --obj=bridge/out/arm64-v8a/libAngryBirdsStarWarsII.debug.so <offsets>` from the same build).
nativeInit and the first frame get their own profiles. The start-up timeline (`startup:` and `lifecycle:`
lines) is always logged.

For code generation work, each profile also classifies the emitted arm64 instruction at each JIT sample and
the one before it (`perf:   JIT at pc:`, e.g. `msr fpsr`, `ldar`, loads and stores), and
`adb shell setprop debug.absw.perf_dump <new value>` logs the IR and host code of the six hottest blocks once
(`perfdump:` lines). `debug.absw.perf_cpus <hex mask>` keeps the rendering thread on those cores, so that CPU
time multiplied by clock compares between runs.

## Debugging

Logs use the tags `absw` (bridge) and `absw-guest` (engine stdout and `_G.print` from patches). A guest crash
inside the memory callbacks logs `guest context:` with the guest PC, LR, registers and code addresses on the
stack. A thread that joins itself is logged with its entry point, caller and code addresses on its stack, and
then parked (`bridge/src/hle_pthread.cpp`): the Rovio cloud SDK's HTTP reactor is sometimes released by its own
event loop when a request fails, and its destructor joins the loop's thread. Treating that join as a detach
let the destructor free the reactor under the running loop (SIGSEGV on guest address 0 about 350 ms later).

Install test builds on a phone with `adb install -r --no-incremental --user 0`. Without `--user 0` the app is
also installed into other profiles, such as Samsung's Dual Messenger (user 95), which shows a second icon. On 2026-10-17 a streamed install lost
its USB connection (Samsung Auto Blocker) and Android removed the installed game together with its progress.

## Status (2026-10-17)

On the Galaxy S26 Ultra with the arm64 build: cold start to the first frame in about 0.96 s with a black
screen, main menu, Naboo 1-1 at native resolution and 120 frames per second (minimum 5 s window 117 fps) in
3-minute sessions, AP temperature 40-44 °C. The user's own progress survived several reinstalls of test builds
(until the removal noted under Debugging).

The self-join crash happened in 2 of about 10 launches of measurement sessions right after an install, and in
none of about 30 other launches; its trigger is unknown. It predates the JIT changes: a phone crash with the
same signature on 2026-10-16 (after 26 minutes of play) and the emulator crash below. The parking fix has not
yet met a real occurrence.

Earlier checks (2026-10-16):

Verified on the Android 36 emulator, 64-bit only (`x86_64,arm64-v8a`), with the x86_64 build:

- Fresh install with no network service: splash, main menu (with the game's "turn your internet on" promo),
  episode selection, Naboo level map, intro comic, tutorial, Naboo 1-1 with a downloaded background, "Level
  cleared". Progress survives a force-stop and restart.
- Audio: the game's 16 kHz mono AudioTrack is running, and no MP3 fails to open.
- The six cloud files are copied on first start and the game opens them without errors. The shop opens.
- At 3120x1440, native rendering keeps the same layout, and touches land correctly. The main menu also fills
  2048x1536 (4:3), 2560x1600 (16:10) and 1600x720 (20:9) screens without black bars, with the buttons at
  the corners.
- Stability: 1 crash in about 20 launches (SIGSEGV on guest address `0xa44b8bc0`, right after a "self-join of
  guest thread"), and none in 11 dedicated cold starts of 50-60 s each. The next occurrence logs the guest
  context and the thread's entry point.

The arm64 build (`dist/AngryBirdsStarWarsII-arm64.apk`) under the emulator's ARM translation reaches the
loading screen and handles the Rovio ID failure. Then the emulator's translator aborts
(`binary_translation/base/mmap_posix.cc: CHECK failed`, an mmap failure in a 4 GB AVD on a host with under
1 GB free). On a phone the bridge runs natively, without that layer.
