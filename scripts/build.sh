#!/usr/bin/env bash
# Baut dist/kein-ki-sprech.zip (Upload in Cowork/claude.ai, Entpacken für Codex
# und Claude Code) sowie die identische Kopie dist/kein-ki-sprech.skill als
# Release-Artefakt.
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
NAME="kein-ki-sprech"
STAGE="$(mktemp -d)"
OUT="$ROOT/dist/$NAME.zip"
SKILL="$ROOT/dist/$NAME.skill"

mkdir -p "$STAGE/$NAME/references"
cp "$ROOT/SKILL.md" "$STAGE/$NAME/"
cp "$ROOT/references/beispiele.md" "$STAGE/$NAME/references/"

mkdir -p "$ROOT/dist"
rm -f "$OUT" "$SKILL"
(cd "$STAGE" && zip -qr "$OUT" "$NAME")
cp "$OUT" "$SKILL"
rm -rf "$STAGE"

echo "gebaut: $OUT"
echo "gebaut: $SKILL"
