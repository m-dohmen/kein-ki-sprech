#!/usr/bin/env bash
# Rendert die PNG-Varianten aus assets/icon.svg und assets/social.html.
# Braucht Google Chrome (headless) und ImageMagick. Beides nur zum Neubauen —
# die fertigen PNGs liegen im Repository.
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
ASSETS="$ROOT/assets"
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

[ -x "$CHROME" ] || { echo "Chrome nicht gefunden: $CHROME" >&2; exit 1; }
command -v magick >/dev/null || { echo "ImageMagick (magick) fehlt" >&2; exit 1; }

shot() { # shot <datei> <breite> <hoehe> <ziel>
  "$CHROME" --headless --disable-gpu --hide-scrollbars \
    --force-device-scale-factor=2 --window-size="$2,$3" \
    --user-data-dir="$TMP/chrome" --screenshot="$4" "file://$1" 2>/dev/null
}

# Icon: SVG in einer transparenten Seite rendern, dann herunterskalieren.
cat > "$TMP/icon.html" <<HTML
<!doctype html><meta charset="utf-8">
<style>*{margin:0;padding:0}html,body{width:512px;height:512px;background:transparent}
img{display:block;width:512px;height:512px}</style>
<img src="$ASSETS/icon.svg">
HTML

shot "$TMP/icon.html" 512 512 "$TMP/icon-1024.png"
magick "$TMP/icon-1024.png" -resize 512x512 "$ASSETS/icon-512.png"
magick "$TMP/icon-1024.png" -resize 256x256 "$ASSETS/icon-256.png"

# Social Preview: GitHub erwartet PNG oder JPG, 1280x640.
shot "$ASSETS/social.html" 1280 640 "$TMP/social-2560.png"
magick "$TMP/social-2560.png" -resize 1280x640 -strip "$ASSETS/social.png"

echo "gebaut: $ASSETS/icon-512.png"
echo "gebaut: $ASSETS/icon-256.png"
echo "gebaut: $ASSETS/social.png"
