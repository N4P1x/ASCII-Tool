#!/bin/sh
# Install ASCII Tool as an Arch Linux (or generic) app
set -e
PREFIX="${PREFIX:-/usr}"
SHARE="$PREFIX/share/ascii-tool"
BIN="$PREFIX/bin"

mkdir -p "$SHARE" "$BIN" "$PREFIX/share/applications"
install -m644 index.html "$SHARE/index.html"
install -m644 README.md "$SHARE/README.md" 2>/dev/null || true
install -m755 ascii-tool "$BIN/ascii-tool"
install -m644 ascii-tool.desktop "$PREFIX/share/applications/ascii-tool.desktop"

echo "Installed ASCII Tool to $SHARE"
echo "Run: ascii-tool"
