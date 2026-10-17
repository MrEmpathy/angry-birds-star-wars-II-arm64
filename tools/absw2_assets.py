#!/usr/bin/env python3
"""Decode Angry Birds Star Wars II (Android 1.9.25) protected files from the user's own copies.

Containers (observed in libAngryBirdsStarWarsII.so and in the files themselves):
    APK scripts and JSON   AES-256-CBC, zero IV, PKCS#7 -> b"\\x89LZMA\\r\\n\\x1a\\n" + LZMA-alone,
                           or a 7-Zip archive holding one file (written as <name>.7z)
    saves (settings.lua…)  AES-256-CBC, zero IV, PKCS#7 -> Lua table source ("root = {...}")
    fusion.registry        AES-256-CBC, zero IV -> one JSON object, then filler bytes (RegistryAccessor::decrypt)
    assets_service/<data>  cloud data (ShopData, quests, ...): AES-256-CBC, zero IV, PKCS#7 -> Lua table
                           source; the key is a 32-character string constant in the engine, applied by
                           the documents reader that native_loadTextFileToLuaTable(path, true) uses

No key ships with this tool. Candidates are rebuilt from the byte-immediate stores in the x86 engine
inside the supplied APK, plus its 32-character alphanumeric string constants for the cloud data. A candidate is accepted for a role only after it decrypts a real file of
that role; --key-hex overrides the asset key.

Requires: Python 3.9+, `cryptography`.
"""
from __future__ import annotations

import argparse
import collections
import json
import lzma
import pathlib
import re
import sys
import zipfile

from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes

LZMA_MAGIC = b"\x89LZMA\r\n\x1a\n"
SEVENZIP_MAGIC = b"7z\xbc\xaf\x27\x1c"
ENGINE_LIB = "lib/x86/libAngryBirdsStarWarsII.so"
PROBE_ASSET = "assets/data/scripts/game.lua"
SAVE_NAMES = ("settings.lua", "bi_data.lua", "highscores.lua", "gamepurchases.lua",
              "eaglepurchases.lua", "episodepurchases.lua")
REGISTRY_NAME = "fusion.registry"


def aes_cbc(key: bytes, data: bytes) -> bytes:
    dec = Cipher(algorithms.AES(key), modes.CBC(bytes(16))).decryptor()
    return dec.update(data) + dec.finalize()


def decrypt(key: bytes, data: bytes) -> bytes | None:
    """AES-CBC/zero-IV decrypt with PKCS#7 removal; None when the input is not a valid container."""
    if not data or len(data) % 16:
        return None
    plain = aes_cbc(key, data)
    pad = plain[-1]
    if not 1 <= pad <= 16 or plain[-pad:] != bytes([pad]) * pad:
        return None
    return plain[:-pad]


def unwrap_lzma(blob: bytes) -> bytes:
    """Decode the magic-prefixed LZMA-alone payload and check the declared size."""
    stream = blob[len(LZMA_MAGIC):]
    declared = int.from_bytes(stream[5:13], "little")
    out = lzma.decompress(stream, format=lzma.FORMAT_ALONE)
    if declared != 0xFFFFFFFFFFFFFFFF and len(out) != declared:
        raise ValueError(f"LZMA size mismatch: declared {declared}, decoded {len(out)}")
    return out


def key_candidates(lib: bytes):
    """Yield 32-byte keys built by x86 `mov byte [r32(+disp8)], imm8` runs."""
    seen = set()
    for i in range(len(lib) - 4):
        # Anchor on the offset-1 store: C6 /0 with mod=01, disp8=1.
        if lib[i] != 0xC6 or lib[i + 1] & 0xF8 != 0x40 or lib[i + 1] == 0x44 or lib[i + 2] != 1:
            continue
        key = [None] * 32
        key[1] = lib[i + 3]
        for j in range(max(0, i - 24), i):  # offset-0 store: C6 /0, mod=00, plain register
            if lib[j] == 0xC6 and lib[j + 1] in (0, 1, 2, 3, 6, 7):
                key[0] = lib[j + 2]
        for j in range(i + 4, min(len(lib) - 4, i + 512)):
            if lib[j] == 0xC6 and lib[j + 1] & 0xF8 == 0x40 and lib[j + 1] != 0x44:
                off = lib[j + 2]
                if 2 <= off < 32 and key[off] is None:
                    key[off] = lib[j + 3]
            if None not in key:
                break
        if None not in key:
            k = bytes(key)
            if k not in seen:
                seen.add(k)
                yield k


def engine_candidates(apk: zipfile.ZipFile) -> list[bytes]:
    try:
        return list(key_candidates(apk.read(ENGINE_LIB)))
    except KeyError:
        sys.exit(f"{ENGINE_LIB} not in APK; pass --key-hex")


def recover_key(apk: zipfile.ZipFile) -> bytes:
    """The asset key: the candidate that opens a real packed script."""
    probe = apk.read(PROBE_ASSET)
    for key in engine_candidates(apk):
        plain = decrypt(key, probe)
        if plain and plain.startswith((LZMA_MAGIC, SEVENZIP_MAGIC)):
            return key
    sys.exit("no key candidate decrypted the probe asset; pass --key-hex")


def string_candidates(apk: zipfile.ZipFile) -> list[bytes]:
    """32-character alphanumeric constants of the x86 engine (the cloud data key is one of them)."""
    lib = apk.read(ENGINE_LIB)
    return list(dict.fromkeys(m.group() for m in re.finditer(rb"(?<![A-Za-z0-9])[A-Za-z0-9]{32}(?![A-Za-z0-9])", lib)))


def cloud_key(candidates: list[bytes], sample: bytes) -> bytes | None:
    for key in candidates:
        plain = decrypt(key, sample)
        if plain and re.match(rb"[A-Za-z_][A-Za-z0-9_]* =", plain):
            return key
    return None


def save_key(candidates: list[bytes], sample: bytes) -> bytes | None:
    for key in candidates:
        plain = decrypt(key, sample)
        if plain and plain.startswith(b"root = {"):
            return key
    return None


def registry_key(candidates: list[bytes], sample: bytes) -> bytes | None:
    for key in candidates:
        if len(sample) % 16 == 0 and aes_cbc(key, sample[:16]).startswith(b"{\""):
            return key
    return None


def decode_registry(key: bytes, data: bytes) -> bytes | None:
    """The JSON object at the start of the plaintext; the bytes after it are not PKCS#7 padding."""
    plain = aes_cbc(key, data)
    for end in range(len(plain), max(0, len(plain) - 16) - 1, -1):
        try:
            text = plain[:end].decode("utf-8")
            json.loads(text)
            return plain[:end]
        except ValueError:
            continue
    return None


def safe_target(out_dir: pathlib.Path, name: str) -> pathlib.Path:
    target = (out_dir / name).resolve()
    if out_dir != target and out_dir not in target.parents:
        raise ValueError(f"entry escapes output directory: {name!r}")
    return target


def write_new(out_dir: pathlib.Path, name: str, payload: bytes) -> None:
    target = safe_target(out_dir, name)
    target.parent.mkdir(parents=True, exist_ok=True)
    with open(target, "xb") as fh:
        fh.write(payload)


def decode_apk(apk: zipfile.ZipFile, key: bytes, out_dir: pathlib.Path, copy_plain: bool) -> int:
    stats = collections.Counter()
    failures = []
    for info in apk.infolist():
        if info.is_dir() or not info.filename.startswith("assets/"):
            continue
        ext = info.filename.rsplit(".", 1)[-1] if "." in info.filename else ""
        data = apk.read(info)
        name = info.filename[len("assets/"):]
        # Only scripts and JSON are packed; a valid PKCS#7 tail on an image is a coincidence, so a
        # decrypted result counts only with a known container signature.
        plain = decrypt(key, data) if ext in ("lua", "json") else None
        try:
            if plain is not None and plain.startswith(LZMA_MAGIC):
                payload, state = unwrap_lzma(plain), "decrypted+lzma"
            elif plain is not None and plain.startswith(SEVENZIP_MAGIC):
                payload, state, name = plain, "decrypted+7z", name + ".7z"
            else:
                payload, state = data, "plain"
        except (lzma.LZMAError, ValueError) as exc:
            failures.append((info.filename, str(exc)))
            stats[(ext, "failed")] += 1
            continue
        stats[(ext, state)] += 1
        if state != "plain" or copy_plain:
            write_new(out_dir, name, payload)
    for (ext, state), n in sorted(stats.items()):
        print(f"  .{ext or '(none)':<6} {state:<15} {n}")
    for name, err in failures:
        print(f"  FAILED {name}: {err}")
    return 1 if failures else 0


def decode_data(data_zip: zipfile.ZipFile, candidates: list[bytes], strings: list[bytes],
                out_dir: pathlib.Path) -> None:
    """Decode the saves, registry and cloud data of a copied /data/data/<pkg>/files tree."""
    by_base = {}
    for info in data_zip.infolist():
        if not info.is_dir():
            by_base.setdefault(info.filename.rsplit("/", 1)[-1], info)
    saves = [by_base[n] for n in SAVE_NAMES if n in by_base]
    skey = save_key(candidates, data_zip.read(saves[0])) if saves else None
    for info in saves:
        plain = decrypt(skey, data_zip.read(info)) if skey else None
        print(f"  save     {info.filename}: {'decoded' if plain else 'not decoded'}")
        if plain:
            write_new(out_dir, "saves/" + info.filename.rsplit("/", 1)[-1], plain)
    if REGISTRY_NAME in by_base:
        raw = data_zip.read(by_base[REGISTRY_NAME])
        rkey = registry_key(candidates, raw)
        text = decode_registry(rkey, raw) if rkey else None
        print(f"  registry {by_base[REGISTRY_NAME].filename}: {'decoded' if text else 'not decoded'}")
        if text:
            write_new(out_dir, "saves/" + REGISTRY_NAME + ".json", text)
    cloud = [info for info in data_zip.infolist() if not info.is_dir() and "." not in info.filename.rsplit("/", 1)[-1]
             and info.filename.rsplit("/", 2)[-2:-1] == ["assets_service"]]
    ckey = cloud_key(strings, data_zip.read(cloud[0])) if cloud else None
    for info in cloud:
        plain = decrypt(ckey, data_zip.read(info)) if ckey else None
        print(f"  cloud    {info.filename}: {'decoded' if plain else 'not decoded'}")
        if plain:
            write_new(out_dir, "assets_service/" + info.filename.rsplit("/", 1)[-1] + ".lua", plain)


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("apk", type=pathlib.Path)
    ap.add_argument("out_dir", type=pathlib.Path, help="new or empty directory for decoded files")
    ap.add_argument("--key-hex", help="use this AES-256 asset key instead of recovering it")
    ap.add_argument("--copy-plain", action="store_true", help="also copy assets that are not protected")
    ap.add_argument("--data", type=pathlib.Path,
                    help="zip of a game's files/ directory (saves, fusion.registry, assets_service/)")
    args = ap.parse_args()

    out_dir = args.out_dir.resolve()
    if out_dir.exists() and any(out_dir.iterdir()):
        sys.exit(f"output directory is not empty: {out_dir}")

    with zipfile.ZipFile(args.apk) as apk:
        key = bytes.fromhex(args.key_hex) if args.key_hex else recover_key(apk)
        print(f"asset key source: {'--key-hex' if args.key_hex else ENGINE_LIB}")
        status = decode_apk(apk, key, out_dir / "apk", args.copy_plain)
        if args.data:
            with zipfile.ZipFile(args.data) as data_zip:
                decode_data(data_zip, engine_candidates(apk), string_candidates(apk), out_dir / "data")
    return status


if __name__ == "__main__":
    sys.exit(main())
