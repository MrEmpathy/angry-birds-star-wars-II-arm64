#!/usr/bin/env bash
# User-space build toolchain for the ARM32 bridge (WSL/Linux x86_64). Installs only under ~/tools.
set -euo pipefail
T="$HOME/tools"
mkdir -p "$T/dl"
cd "$T/dl"

fetch() { [ -s "$2" ] || curl -fL --retry 3 -o "$2.part" "$1" && mv -f "$2.part" "$2" 2>/dev/null || true; }

unzip_py() {  # zip extraction that keeps unix permissions (no unzip on this host)
  python3 -I - "$1" "$2" <<'EOF'
import os, sys, zipfile
src, dst = sys.argv[1], sys.argv[2]
with zipfile.ZipFile(src) as z:
    for info in z.infolist():
        path = z.extract(info, dst)
        mode = (info.external_attr >> 16) & 0o7777
        if (info.external_attr >> 16) & 0o170000 == 0o120000:  # symlink
            target = open(path).read(); os.remove(path); os.symlink(target, path)
        elif mode:
            os.chmod(path, mode)
EOF
}

fetch https://dl.google.com/android/repository/android-ndk-r27d-linux.zip ndk.zip
fetch https://github.com/Kitware/CMake/releases/download/v3.30.5/cmake-3.30.5-linux-x86_64.tar.gz cmake.tgz
fetch https://github.com/ninja-build/ninja/releases/download/v1.12.1/ninja-linux.zip ninja.zip
fetch https://archives.boost.io/release/1.86.0/source/boost_1_86_0.tar.gz boost.tgz

[ -d "$T/android-ndk-r27d" ] || unzip_py ndk.zip "$T"
[ -d "$T/cmake-3.30.5-linux-x86_64" ] || tar -xzf cmake.tgz -C "$T"
[ -x "$T/bin/ninja" ] || { mkdir -p "$T/bin"; unzip_py ninja.zip "$T/bin"; chmod +x "$T/bin/ninja"; }
[ -d "$T/boost_1_86_0" ] || tar -xzf boost.tgz -C "$T" boost_1_86_0/boost
[ -d "$T/src/dynarmic" ] || git clone --depth 1 https://github.com/Vita3K/dynarmic "$T/src/dynarmic"

"$T/cmake-3.30.5-linux-x86_64/bin/cmake" --version | head -1
"$T/bin/ninja" --version
"$T/android-ndk-r27d/toolchains/llvm/prebuilt/linux-x86_64/bin/clang" --version | head -1
ls "$T/boost_1_86_0/boost" | wc -l
git -C "$T/src/dynarmic" log -1 --format='dynarmic %h %cd'
