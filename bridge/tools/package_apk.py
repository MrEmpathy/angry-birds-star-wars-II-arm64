#!/usr/bin/env python3
"""Repackage the user's original APK with the ARM32 bridge for 64-bit-only devices.

The output keeps the original DEX/resources/assets, drops the old signature and the 32-bit
native folders (including the AdColony/SpiderMonkey libraries, whose Java loader tolerates their
absence), and adds lib/<abi>/libAngryBirdsStarWarsII.so (bridge) plus lib/<abi>/libabsw2_arm32.so
(the original armeabi-v7a engine, loaded by the bridge).
"""
import argparse
import os
import pathlib
import subprocess
import sys
import zipfile

GUEST_SRC = "lib/armeabi-v7a/libAngryBirdsStarWarsII.so"
DROP_PREFIXES = ("lib/armeabi/", "lib/armeabi-v7a/", "lib/x86/", "lib/mips/")
RENDER_HEIGHT_ASSET = "assets/absw/render_height"  # read by bridge/src/display.cpp
ASSET_INDEX = "assets/assets.list"  # the engine's index of APK assets; rebuilt when entries are added


def is_old_signature(name):
    if not name.startswith("META-INF/"):
        return False
    base = name.rsplit("/", 1)[-1].upper()
    return base == "MANIFEST.MF" or base.endswith((".SF", ".RSA", ".DSA", ".EC"))


def load_overlay(root):
    """Files under `root` keyed by their APK path (e.g. assets/data/scripts/...)."""
    if not root:
        return {}
    root = pathlib.Path(root)
    return {p.relative_to(root).as_posix(): p.read_bytes() for p in sorted(root.rglob("*")) if p.is_file()}


def asset_index(names):
    """assets/assets.list as the game ships it: every file and directory under assets/, sorted,
    one per line, newline-terminated, without the index itself."""
    entries = set()
    for name in names:
        if not name.startswith("assets/") or name == ASSET_INDEX or name.endswith("/"):
            continue
        rel = name[len("assets/"):]
        parts = rel.split("/")
        entries.add(rel)
        entries.update("/".join(parts[:k]) + "/" for k in range(1, len(parts)))
    return "".join(e + "\n" for e in sorted(entries)).encode()


def build_unsigned(src_apk, bridge_out, abis, dst, overlay):
    with zipfile.ZipFile(src_apk) as src, zipfile.ZipFile(dst, "w") as out:
        guest = src.read(GUEST_SRC)
        pending = dict(overlay)
        kept = [i.filename for i in src.infolist()
                if not is_old_signature(i.filename) and not i.filename.startswith(DROP_PREFIXES)]
        if ASSET_INDEX in kept and ASSET_INDEX not in pending:
            index = asset_index(kept + list(pending))
            if index != src.read(ASSET_INDEX):
                pending[ASSET_INDEX] = index
        for info in src.infolist():
            if is_old_signature(info.filename) or info.filename.startswith(DROP_PREFIXES):
                continue
            data = pending.pop(info.filename, None)
            out.writestr(info, src.read(info) if data is None else data, compress_type=info.compress_type)
        for name, data in pending.items():
            out.writestr(zipfile.ZipInfo(name, (2026, 1, 1, 0, 0, 0)), data, compress_type=zipfile.ZIP_DEFLATED)
        for abi in abis:
            bridge = pathlib.Path(bridge_out, abi, "libAngryBirdsStarWarsII.so").read_bytes()
            out.writestr(zipfile.ZipInfo(f"lib/{abi}/libAngryBirdsStarWarsII.so", (2026, 1, 1, 0, 0, 0)), bridge,
                         compress_type=zipfile.ZIP_DEFLATED)
            out.writestr(zipfile.ZipInfo(f"lib/{abi}/libabsw2_arm32.so", (2026, 1, 1, 0, 0, 0)), guest,
                         compress_type=zipfile.ZIP_DEFLATED)


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("apk", help="original Angry Birds Star Wars II APK")
    ap.add_argument("out", help="signed output APK")
    ap.add_argument("--bridge-out", required=True, help="bridge/out directory with <abi>/ builds")
    ap.add_argument("--abi", action="append", default=[], help="ABI to include (repeatable)")
    ap.add_argument("--build-tools", required=True, help="Android SDK build-tools directory")
    ap.add_argument("--keystore", required=True, help="local signing keystore (created if missing)")
    ap.add_argument("--overlay", action="append", default=[],
                    help="directory whose files replace or add APK entries (repeatable; Lua patches, cloud data)")
    ap.add_argument("--render-height", type=int, choices=range(0, 8193), metavar="0..8192",
                    help="bridge render height for this APK (0 = native resolution); the bridge default is 1080")
    args = ap.parse_args()
    abis = args.abi or ["arm64-v8a"]

    overlay = {}
    for root in args.overlay:
        for name, data in load_overlay(root).items():
            if name in overlay:
                sys.exit(f"{name} is provided by more than one overlay")
            overlay[name] = data
    if args.render_height is not None:
        overlay[RENDER_HEIGHT_ASSET] = f"{args.render_height}\n".encode()

    out = pathlib.Path(args.out).resolve()
    out.parent.mkdir(parents=True, exist_ok=True)
    unsigned = out.with_suffix(".unsigned.apk")
    aligned = out.with_suffix(".aligned.apk")
    build_unsigned(args.apk, args.bridge_out, abis, unsigned, overlay)

    bt = pathlib.Path(args.build_tools)
    exe = ".exe" if os.name == "nt" else ""
    bat = ".bat" if os.name == "nt" else ""
    subprocess.run([str(bt / f"zipalign{exe}"), "-f", "4", str(unsigned), str(aligned)], check=True)

    ks = pathlib.Path(args.keystore)
    if not ks.exists():
        ks.parent.mkdir(parents=True, exist_ok=True)
        subprocess.run(["keytool", "-genkeypair", "-keystore", str(ks), "-alias", "absw", "-keyalg", "RSA",
                        "-keysize", "2048", "-validity", "10000", "-dname", "CN=absw local build",
                        "-storepass", "absw-local", "-keypass", "absw-local"], check=True)
    subprocess.run([str(bt / f"apksigner{bat}"), "sign", "--ks", str(ks), "--ks-pass", "pass:absw-local",
                    "--ks-key-alias", "absw", "--out", str(out), str(aligned)], check=True, shell=os.name == "nt")
    unsigned.unlink()
    aligned.unlink()
    print(f"wrote {out} ({out.stat().st_size} bytes) for {', '.join(abis)}")


if __name__ == "__main__":
    sys.exit(main())
