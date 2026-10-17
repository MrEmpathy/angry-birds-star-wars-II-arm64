#!/usr/bin/env python3
"""Turn bridge/lua*/ source patches into encrypted game assets.

Several patch directories can be given (e.g. bridge/lua/offline bridge/lua/...); a script may be patched
by only one of them. For each patch at <rel>.lua (relative to data/scripts) this writes, under
<out>/assets/data/scripts:
  <rel>.lua       the patch source, packed like the game's scripts (LZMA, then AES-256-CBC)
  <rel>.orig.lua  the APK's original encrypted script, which the patch loads first
The AES key is recovered from the user's APK at build time; nothing here contains it.
"""
import argparse
import lzma
import pathlib
import sys
import zipfile

from cryptography.hazmat.primitives import padding
from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes

sys.path.insert(0, str(pathlib.Path(__file__).resolve().parents[2] / "tools"))
import absw2_assets as absw_assets  # noqa: E402  (key recovery and the reference decoder)

SCRIPTS = "assets/data/scripts/"


def pack(source: bytes, key: bytes) -> bytes:
    stream = bytearray(lzma.compress(source, format=lzma.FORMAT_ALONE,
                                     filters=[{"id": lzma.FILTER_LZMA1, "dict_size": 1 << 16}]))
    stream[5:13] = len(source).to_bytes(8, "little")  # the engine sizes its buffer from this field
    plain = absw_assets.LZMA_MAGIC + bytes(stream)
    padder = padding.PKCS7(128).padder()
    plain = padder.update(plain) + padder.finalize()
    enc = Cipher(algorithms.AES(key), modes.CBC(bytes(16))).encryptor()
    return enc.update(plain) + enc.finalize()


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("apk")
    ap.add_argument("patches", type=pathlib.Path, nargs="+", help="patch directories (bridge/lua/offline, ...)")
    ap.add_argument("out", type=pathlib.Path, help="output root (assets/... is created inside)")
    args = ap.parse_args()

    patches = {}
    for root in args.patches:
        for patch in root.rglob("*.lua"):
            rel = patch.relative_to(root).as_posix()
            if rel in patches:
                sys.exit(f"{rel} is patched in both {patches[rel]} and {patch}")
            patches[rel] = patch

    with zipfile.ZipFile(args.apk) as apk:
        key = absw_assets.recover_key(apk)
        for rel, patch in sorted(patches.items()):
            original = apk.read(SCRIPTS + rel)
            source = patch.read_bytes()
            packed = pack(source, key)
            if absw_assets.unwrap_lzma(absw_assets.decrypt(key, packed)) != source:
                sys.exit(f"round-trip check failed for {rel}")
            dst = args.out / SCRIPTS / rel
            dst.parent.mkdir(parents=True, exist_ok=True)
            dst.write_bytes(packed)
            dst.with_name(dst.name[:-4] + ".orig.lua").write_bytes(original)
            print(f"patched {rel} ({len(source)} bytes source)")


if __name__ == "__main__":
    main()
