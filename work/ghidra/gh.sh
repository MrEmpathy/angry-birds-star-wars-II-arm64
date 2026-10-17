#!/usr/bin/env bash
# gh.sh import <binary> | gh.sh <out> <cmd> <args...>   (WSL)
set -euo pipefail
G=~/tools/ghidra_12.1.4_PUBLIC/support/analyzeHeadless
P=~/ghidra_proj; S=/mnt/c/Users/nicox/Documents/angry-birds-star-wars-II-arm64/work/ghidra
export JAVA_HOME=$(ls -d ~/tools/jdk-21*)
mkdir -p $P
if [ "$1" = import ]; then
  $G $P absw2 -import "$2" -overwrite -max-cpu 8 > $P/import.log 2>&1; tail -3 $P/import.log; exit
fi
out="$1"; shift
$G $P absw2 -process "$(cat $P/name 2>/dev/null || echo ads_armeabi-v7a_libAngryBirdsStarWarsII.so)" -noanalysis -readOnly -scriptPath $S -postScript Dump.java "$out" "$@" > $P/run.log 2>&1 || { tail -20 $P/run.log; exit 1; }
