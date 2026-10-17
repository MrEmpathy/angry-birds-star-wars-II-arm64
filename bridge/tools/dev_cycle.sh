#!/usr/bin/env bash
# Build -> package -> install on the connected device/emulator -> launch -> filtered log.
# Usage: dev_cycle.sh [abi] [seconds]   (run from Git Bash on Windows)
set -euo pipefail
ABI="${1:-x86_64}"
WAIT="${2:-30}"
ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
APK="$ROOT/test-out/absw2-test-$ABI.apk"
PKG="com.rovio.angrybirdsstarwarsii.ads"
mkdir -p "$ROOT/test-out"

bash "$ROOT/bridge/tools/make_release.sh" "$ABI" "$APK" | tail -2
# --no-incremental: on 2026-10-17 a streamed (incremental) install on a phone lost its USB connection and
# Android removed the installed app together with its saved progress. A full install copies the whole
# APK before touching the installed app, so a dropped connection only makes the install fail.
# --user 0: without it, pm installs for every user, including Samsung's Dual Messenger profile (user 95),
# which adds a second launcher icon.
adb install -r --no-incremental --user 0 "$(cygpath -w "$APK")" | tail -1
adb shell am force-stop "$PKG"
adb logcat -c
adb shell am start -n "$PKG/com.rovio.fusion.App" > /dev/null
sleep "$WAIT"
adb logcat -d -v brief > "$ROOT/test-out/last-run.log"
grep -E "absw|AndroidRuntime|F/libc|F/DEBUG.*(signal|#0[0-9]|Abort)|UnsatisfiedLink|E/rovio|Exception" "$ROOT/test-out/last-run.log" \
  | grep -vE "ConnectivityService|NetworkMonitor" | head -"${LINES_MAX:-60}"
