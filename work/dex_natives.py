import re, sys
cls = None; name = None; typ = None; out = []
for line in open(sys.argv[1], encoding="utf-8", errors="replace"):
    m = re.match(r"\s*Class descriptor\s*:\s*'L(.*);'", line)
    if m: cls = m.group(1).replace("/", "."); continue
    m = re.match(r"\s*name\s*:\s*'(.*)'", line)
    if m: name = m.group(1); continue
    m = re.match(r"\s*type\s*:\s*'(.*)'", line)
    if m: typ = m.group(1); continue
    m = re.match(r"\s*access\s*:\s*0x([0-9a-f]+) \((.*)\)", line)
    if m and typ and typ.startswith("("):
        if "NATIVE" in m.group(2):
            out.append(("static " if "STATIC" in m.group(2) else "") + f"{cls}.{name}{typ}")
        typ = None
print("\n".join(sorted(set(out), key=lambda s: s.replace("static ", ""))))
