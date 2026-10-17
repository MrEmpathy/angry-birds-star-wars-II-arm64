#!/usr/bin/env bash
# Build the guest runtime (ARM32) and the host bridge (x86_64 + arm64-v8a). Run inside WSL.
set -euo pipefail
HERE="$(cd "$(dirname "$0")/.." && pwd)"
T="$HOME/tools"
NDK="$T/android-ndk-r27d"
CMAKE="$T/cmake-3.30.5-linux-x86_64/bin/cmake"
LLVM="$NDK/toolchains/llvm/prebuilt/linux-x86_64"
GEN="$HERE/gen"
OUT="$HERE/out"
ABIS="${ABIS:-x86_64 arm64-v8a}"
TRACE="${TRACE:-OFF}"
mkdir -p "$GEN" "$OUT"

# xbyak divides by the CPUID SMT width, which virtual AMD CPUs (e.g. the WHPX emulator) report as 0.
XU="$T/src/dynarmic/externals/xbyak/xbyak/xbyak_util.h"
grep -q "absw: smt_width guard" "$XU" || sed -i \
  's|coresSharignDataCache_\[cache_index\] = local::max_(actual_logical_cores / smt_width, 1);|coresSharignDataCache_[cache_index] = local::max_(smt_width ? actual_logical_cores / smt_width : actual_logical_cores, 1); /* absw: smt_width guard */|' "$XU"
grep -q "absw: smt_width guard 2" "$XU" || sed -i \
  's|coresSharignDataCache_\[dataCacheLevels_\] = local::max_(actual_logical_cores / smt_width, 1u);|coresSharignDataCache_[dataCacheLevels_] = local::max_(smt_width ? actual_logical_cores / smt_width : actual_logical_cores, 1u); /* absw: smt_width guard 2 */|' "$XU"
grep -q "absw: smt_width guard 2" "$XU" || { echo "xbyak patch failed"; exit 1; }
python3 -I "$HERE/tools/patch_dynarmic.py" "$T/src/dynarmic"

# 1. Guest runtime: ARM32 shared object, no libc; imports resolve to host thunks at load time.
GB="$T/build/absw2-guest"
mkdir -p "$GB"
CC="$LLVM/bin/clang --target=armv7a-linux-androideabi16 -marm -mfloat-abi=softfp -mfpu=neon"
$CC -O2 -fPIC -ffreestanding -fno-stack-protector -c "$HERE/guest/rt.c" -o "$GB/rt.o"
$CC -c "$HERE/guest/setjmp.S" -o "$GB/setjmp.o"
BUILTINS="$($CC -print-libgcc-file-name)"
$CC -shared -nostdlib -Wl,-soname,libabsw_rt.so -Wl,--hash-style=both -o "$GB/libabsw_rt.so" \
    "$GB/rt.o" "$GB/setjmp.o" "$BUILTINS"
python3 -I - "$GB/libabsw_rt.so" "$GEN/guest_rt_blob.inc" <<'EOF'
import sys
data = open(sys.argv[1], "rb").read()
with open(sys.argv[2], "w") as f:
    for i in range(0, len(data), 24):
        f.write(",".join(str(b) for b in data[i:i + 24]) + ",\n")
EOF
echo "guest runtime: $(stat -c%s "$GB/libabsw_rt.so") bytes"

# Kernel user helpers page contents (raw ARM code for 0xffff0f60..0xffff0fff).
$CC -c "$HERE/guest/kuser.S" -o "$GB/kuser.o"
"$LLVM/bin/llvm-objcopy" -O binary --only-section=.text "$GB/kuser.o" "$GB/kuser.bin"
python3 -I - "$GB/kuser.bin" "$GEN/kuser_blob.inc" <<'EOF'
import sys
data = open(sys.argv[1], "rb").read()
assert len(data) == 0xa0, len(data)
open(sys.argv[2], "w").write(",".join(str(b) for b in data) + ",\n")
EOF

# 2. Native trampolines from the DEX native-method list.
python3 -I "$HERE/tools/gen_natives.py" "$HERE/natives.txt" "$GEN/natives_gen.inc"

# 3. Host bridge per ABI.
for ABI in $ABIS; do
  B="$T/build/absw2-bridge-$ABI"
  "$CMAKE" -S "$HERE" -B "$B" -G Ninja -DCMAKE_MAKE_PROGRAM="$T/bin/ninja" \
    -DCMAKE_TOOLCHAIN_FILE="$NDK/build/cmake/android.toolchain.cmake" -DANDROID_ABI="$ABI" \
    -DANDROID_PLATFORM=android-26 -DANDROID_STL=c++_static -DANDROID_SUPPORT_FLEXIBLE_PAGE_SIZES=ON \
    -DCMAKE_BUILD_TYPE=RelWithDebInfo -DBoost_INCLUDE_DIR="$T/boost_1_86_0" \
    -DDYNARMIC_SRC="$T/src/dynarmic" -DABSW_GEN_DIR="$GEN" -DABSW_TRACE="$TRACE" > "$B.configure.log" 2>&1 \
    || { tail -40 "$B.configure.log"; exit 1; }
  "$CMAKE" --build "$B" --target AngryBirdsStarWarsII -j 12 > "$B.build.log" 2>&1 \
    || { grep -E "error|undefined" "$B.build.log" | head -40; exit 1; }
  mkdir -p "$OUT/$ABI"
  "$LLVM/bin/llvm-strip" --strip-unneeded -o "$OUT/$ABI/libAngryBirdsStarWarsII.so" "$B/libAngryBirdsStarWarsII.so"
  cp "$B/libAngryBirdsStarWarsII.so" "$OUT/$ABI/libAngryBirdsStarWarsII.debug.so"
  echo "$ABI: $(stat -c%s "$OUT/$ABI/libAngryBirdsStarWarsII.so") bytes"
done
