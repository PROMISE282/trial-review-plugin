#!/usr/bin/env bash
# ChatGPT·Codex 등 Agent Skills 지원 도구에 올릴 zip을 만든다.
# 사용: scripts/package-skill.sh [trial-review|trial-review-classic]
set -euo pipefail
name="${1:-trial-review}"
root="$(cd "$(dirname "$0")/.." && pwd)"
src="$root/plugins/$name/skills/$name"
[ -f "$src/SKILL.md" ] || { echo "스킬을 찾을 수 없습니다: $src" >&2; exit 1; }
mkdir -p "$root/dist"
out="$root/dist/$name.zip"
rm -f "$out"
(cd "$root/plugins/$name/skills" && zip -qr "$out" "$name" -x '*.DS_Store' -x "$name/references/personas-sources.md")
echo "$out"
