#!/usr/bin/env bash
# Decompile every Lua 5.1 bytecode file under $1 into $2 (same relative paths).
set -u
src="$1"; dst="$2"; fail=0; ok=0
while IFS= read -r -d '' f; do
  rel="${f#$src/}"; mkdir -p "$dst/$(dirname "$rel")"
  if java -jar "$(dirname "$0")/unluac.jar" "$f" > "$dst/$rel" 2>/dev/null; then ok=$((ok+1)); else fail=$((fail+1)); echo "FAIL $rel"; fi
done < <(find "$src" -name "*.lua" -print0)
echo "ok=$ok fail=$fail"
