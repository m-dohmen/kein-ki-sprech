#!/usr/bin/env bash
# Baut das Release-Artefakt dist/kein-ki-sprech.skill
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
NAME="kein-ki-sprech"
STAGE="$(mktemp -d)"
OUT="$ROOT/dist/$NAME.skill"

mkdir -p "$STAGE/$NAME/references"
cp "$ROOT/SKILL.md" "$STAGE/$NAME/"
cp "$ROOT/references/beispiele.md" "$STAGE/$NAME/references/"

mkdir -p "$ROOT/dist"
rm -f "$OUT"
(cd "$STAGE" && zip -qr "$OUT" "$NAME")
rm -rf "$STAGE"

echo "gebaut: $OUT"
