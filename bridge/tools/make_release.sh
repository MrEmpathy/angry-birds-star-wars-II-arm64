#!/usr/bin/env bash
# Build an APK for 64-bit-only phones: bridge + offline patch + the cloud assets, signed with the local key.
# Usage (Git Bash on Windows): make_release.sh [abi] [out.apk]
#   abi: arm64-v8a (default, phones) or x86_64 (emulator)
#   RENDER_HEIGHT=N caps the GL surface height (bridge/src/display.cpp). The default 0 renders at native
#   resolution: ABSW2 lays its UI out for the screen size, so a cap only lowers sharpness.
# Inputs: original/absw2_ads_1.9.25.apk (com.rovio.angrybirdsstarwarsii.ads 1.9.25, unmodified)
#         original/absw2_ads_files.zip  (files/ of a device that had downloaded the cloud assets)
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
W="/mnt$ROOT"  # Git Bash /c/... is /mnt/c/... in WSL
SDK="${ANDROID_SDK:-/c/Users/nicox/AppData/Local/Android/Sdk}"
ABI="${1:-arm64-v8a}"
BASE="$ROOT/original/absw2_ads_1.9.25.apk"
DATA="$ROOT/original/absw2_ads_files.zip"
case "$ABI" in
  arm64-v8a) DEF_OUT="$ROOT/dist/AngryBirdsStarWarsII-arm64.apk" ;;
  x86_64) DEF_OUT="$ROOT/test-out/AngryBirdsStarWarsII-x86_64.apk" ;;
  *) echo "unknown abi: $ABI" >&2; exit 2 ;;
esac
OUT="${2:-$DEF_OUT}"
mkdir -p "$ROOT/test-out" "$(dirname "$OUT")"

wsl.exe -e bash -lc "cd /tmp && ABIS=$ABI TRACE=${TRACE:-OFF} bash $W/bridge/tools/build.sh" > "$ROOT/test-out/build.log" 2>&1 \
  || { grep -E "error|undefined|failed" "$ROOT/test-out/build.log" | head -20; exit 1; }
grep -E "^$ABI:" "$ROOT/test-out/build.log"

OV="$ROOT/bridge/out/overlay"
rm -rf "$OV"
mkdir -p "$OV/lua" "$OV/cloud"
wsl.exe -e bash -lc "python3 -I $W/bridge/tools/build_lua_patches.py $W/original/$(basename "$BASE") $W/bridge/lua/offline $W/bridge/out/overlay/lua"
python -I "$ROOT/tools/stage_cloud_data.py" "$(cygpath -w "$DATA")" "$(cygpath -w "$OV/cloud")"
python -I "$ROOT/bridge/tools/package_apk.py" "$(cygpath -w "$BASE")" "$(cygpath -w "$OUT")" \
  --bridge-out "$(cygpath -w "$ROOT/bridge/out")" --abi "$ABI" \
  --overlay "$(cygpath -w "$OV/lua")" --overlay "$(cygpath -w "$OV/cloud")" \
  --build-tools "$(cygpath -w "$SDK/build-tools/36.0.0")" --keystore "$(cygpath -w "$ROOT/keystore/absw2-local.keystore")" \
  --render-height "${RENDER_HEIGHT:-0}"
sha256sum "$OUT"
