# Maintainer: you <you@example.com>
pkgname=ascii-tool
pkgver=1.2
pkgrel=1
pkgdesc="Local browser-based image, ANSI, and video to ASCII converter"
arch=('any')
url="https://asciitool.com"
license=('MIT')
depends=('xdg-utils')
source=()
# For local build, files are taken from the source directory.
# Place index.html, ascii-tool, ascii-tool.desktop in the same dir as PKGBUILD.

package() {
  install -d "$pkgdir/usr/share/ascii-tool"
  install -m644 "$startdir/index.html" "$pkgdir/usr/share/ascii-tool/index.html"
  install -m644 "$startdir/README.md" "$pkgdir/usr/share/ascii-tool/README.md" 2>/dev/null || true

  install -d "$pkgdir/usr/bin"
  install -m755 "$startdir/ascii-tool" "$pkgdir/usr/bin/ascii-tool"

  install -d "$pkgdir/usr/share/applications"
  install -m644 "$startdir/ascii-tool.desktop" "$pkgdir/usr/share/applications/ascii-tool.desktop"

  install -d "$pkgdir/usr/share/icons/hicolor/128x128/apps"
  # icon placeholder (optional)
}
EOF
echo done