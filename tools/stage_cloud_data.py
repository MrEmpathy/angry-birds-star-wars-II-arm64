#!/usr/bin/env python3
"""Stage the assets that Angry Birds Star Wars II 1.9.25 used to download from cloud.rovio.com.

Input: a zip (or directory) of the game's /data/data/<pkg>/files tree, as copied from a device that
had finished the first-run download. Only its assets_service/ folder is used. Saves, the registry
(which holds that device's Rovio account tokens) and analytics files are ignored.

The game downloads two required archives and unpacks them into assets_service/:
    16000hz-16bit-mono.7z  -> 16000hz-16bit-mono/{music,sfx}/*.mp3   (sounds_1_8_0)
    images.7z              -> images/android/*.{pvr,dat}              (images)
With options downloadSoundAssets/downloadVisualAssets off, the same engine reads sounds from
data/audio/ and images from data/images/android/ inside the APK. This writes them there:
    <out>/assets/data/audio/{music,sfx}/...
    <out>/assets/data/images/android/...

It also downloads cloud data files, which it keeps encrypted in assets_service/ and reads from
there when the service does not answer (ShopData, quests, RewardData, CameraData, UpdateData,
SamsungDeviceData). The bridge copies them to the app's files directory on first start
(bridge/src/seed.cpp), unchanged, from:
    <out>/assets/absw2/files/assets_service/<name>
    <out>/assets/absw2/seed.list                   (one path per line, relative to files/)

The unpacked folders are used when present. Otherwise the .7z archives are extracted with 7-Zip
(7z on PATH, or --sevenzip). Each archive's MD5 is printed: the game stores it in settings.lua
(assetData) after a successful unpack.
"""
from __future__ import annotations

import argparse
import hashlib
import pathlib
import shutil
import subprocess
import sys
import tempfile
import zipfile

SERVICE = "assets_service/"
CLOUD_DATA = ("ShopData", "quests", "RewardData", "CameraData", "UpdateData", "SamsungDeviceData")
SEED_DIR = "assets/absw2/files/"
SEED_LIST = "assets/absw2/seed.list"
ARCHIVES = {  # archive -> (unpacked folder prefix, APK destination prefix, expected file count)
    "16000hz-16bit-mono.7z": ("16000hz-16bit-mono/", "assets/data/audio/", 717),
    "images.7z": ("images/android/", "assets/data/images/android/", 12),
}


class Source:
    """assets_service/ entries of a zip or a directory, keyed by their path below assets_service/."""

    def __init__(self, path: pathlib.Path):
        self.files: dict[str, object] = {}
        if path.is_dir():
            roots = [p for p in path.rglob("assets_service") if p.is_dir()]
            if len(roots) != 1:
                sys.exit(f"expected one assets_service folder under {path}, found {len(roots)}")
            self.zip = None
            for p in sorted(roots[0].rglob("*")):
                if p.is_file():
                    self.files[p.relative_to(roots[0]).as_posix()] = p
        else:
            self.zip = zipfile.ZipFile(path)
            for info in self.zip.infolist():
                i = info.filename.find(SERVICE)
                if i >= 0 and not info.is_dir():
                    self.files[info.filename[i + len(SERVICE):]] = info

    def read(self, name: str) -> bytes:
        entry = self.files[name]
        return self.zip.read(entry) if self.zip else entry.read_bytes()


def extract_7z(sevenzip: str, data: bytes) -> dict[str, bytes]:
    with tempfile.TemporaryDirectory() as tmp:
        arc = pathlib.Path(tmp, "a.7z")
        arc.write_bytes(data)
        dst = pathlib.Path(tmp, "x")
        subprocess.run([sevenzip, "x", "-y", f"-o{dst}", str(arc)], check=True, stdout=subprocess.DEVNULL)
        return {p.relative_to(dst).as_posix(): p.read_bytes() for p in sorted(dst.rglob("*")) if p.is_file()}


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("data", type=pathlib.Path, help="zip or directory holding files/assets_service/")
    ap.add_argument("out", type=pathlib.Path, help="new or empty overlay directory")
    ap.add_argument("--sevenzip", default=shutil.which("7z") or shutil.which("7z.exe"),
                    help="7-Zip executable, needed only when the unpacked folders are missing")
    args = ap.parse_args()

    out = args.out.resolve()
    if out.exists() and any(out.iterdir()):
        sys.exit(f"output directory is not empty: {out}")
    src = Source(args.data)

    for archive, (folder, dest, expected) in ARCHIVES.items():
        unpacked = {n[len(folder):]: n for n in src.files if n.startswith(folder)}
        md5 = hashlib.md5(src.read(archive)).hexdigest() if archive in src.files else None
        if unpacked:
            files = {rel: src.read(name) for rel, name in sorted(unpacked.items())}
            origin = f"unpacked {folder}"
        elif md5:
            if not args.sevenzip:
                sys.exit(f"{folder} is not unpacked and no 7-Zip was found for {archive}; pass --sevenzip")
            files = {n[len(folder):]: d for n, d in extract_7z(args.sevenzip, src.read(archive)).items()
                     if n.startswith(folder)}
            origin = archive
        else:
            sys.exit(f"neither {archive} nor {folder} is in {args.data}")
        if len(files) != expected:
            sys.exit(f"{origin}: {len(files)} files, expected {expected} (incomplete copy?)")
        for rel, data in files.items():
            target = (out / dest / rel).resolve()
            if out not in target.parents:
                sys.exit(f"entry escapes output directory: {rel!r}")
            target.parent.mkdir(parents=True, exist_ok=True)
            target.write_bytes(data)
        size = sum(len(d) for d in files.values())
        print(f"{archive}: {len(files)} files, {size} bytes from {origin} -> {dest}"
              + (f" (archive md5 {md5})" if md5 else ""))
    seeded = []
    for name in CLOUD_DATA:
        if name not in src.files:
            print(f"cloud data {name}: missing, the game will use its packaged default")
            continue
        data = src.read(name)
        if not data or len(data) % 16:
            sys.exit(f"cloud data {name}: {len(data)} bytes is not an AES container (damaged copy?)")
        target = out / SEED_DIR / "assets_service" / name
        target.parent.mkdir(parents=True, exist_ok=True)
        target.write_bytes(data)
        seeded.append("assets_service/" + name)
        print(f"cloud data {name}: {len(data)} bytes, md5 {hashlib.md5(data).hexdigest()} -> {SEED_DIR}assets_service/")
    if seeded:
        (out / SEED_LIST).write_bytes("".join(p + "\n" for p in seeded).encode())
    ignored = sorted(n for n in src.files if "/" not in n and n not in ARCHIVES and n not in CLOUD_DATA)
    print("ignored:", ", ".join(ignored) or "none")
    return 0


if __name__ == "__main__":
    sys.exit(main())
