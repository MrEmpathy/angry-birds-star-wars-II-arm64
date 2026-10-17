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

## Debugging

Logs use the tags `absw` (bridge) and `absw-guest` (engine stdout and `_G.print` from patches). A guest crash
inside the memory callbacks logs `guest context:` with the guest PC, LR, registers and code addresses on the
stack. A thread that joins itself is logged with its entry point and caller.

## Status (2026-10-16)

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
1 GB free). On a phone the bridge runs natively, without that layer. **Not tested on a real phone yet.**
