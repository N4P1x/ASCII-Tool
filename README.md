# ASCII Tool

[![Live Demo](https://img.shields.io/badge/demo-live-brightgreen)](https://n4p1x.github.io/ASCII-Tool/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Arch Linux](https://img.shields.io/badge/Arch%20Linux-package-1793D1?logo=arch-linux)](PKGBUILD)

A self-contained, browser-based tool that converts images, ANSI color, and video
into ASCII art. Everything runs locally — no uploads, no sign-up, no tracking.

Reverse-engineered from [asciitool.com](https://asciitool.com) using
[REA](https://github.com/morluto/rea) and reimplemented as a single HTML file
that works offline.

**[Live demo →](https://n4p1x.github.io/ASCII-Tool/)**

## Screenshots

| Image to ASCII                                    | Image to ANSI                                   |
| ------------------------------------------------- | ----------------------------------------------- |
| ![Image to ASCII](screenshots/image-to-ascii.png) | ![Image to ANSI](screenshots/image-to-ansi.png) |

![Video to ASCII](screenshots/video-to-ascii.png)

## Features

- **Image → ASCII** — convert any browser-readable image (PNG, JPG, WebP, GIF, …)
- **Image → ANSI** — colored terminal output with 24-bit color
- **Video → ASCII** — frame extraction, preview, playback, and batch export
- Adjustable width (20–768 chars), aspect ratio, brightness, contrast, edges
- Custom gradient ramps with presets (classic, blocks, dots, minimal, detailed)
- Invert, text/background colors, optional transparent background
- Export as `.txt` or PNG at Preview / 1080p / 4K / 8K resolution
- Runs entirely in the browser — media never leaves your device

## Usage

Open `index.html` in any modern browser, or serve it locally:

```sh
python3 -m http.server 8000
# then open http://127.0.0.1:8000
```

Drag and drop an image or video onto the drop zone, adjust the settings, and
copy or download the result.

## Arch Linux

A PKGBUILD is included.

```sh
makepkg -si
ascii-tool
```

Or install manually:

```sh
./install.sh
```

## Project layout

```
.
├── index.html          # the entire application (single file, no dependencies)
├── PKGBUILD            # Arch Linux package
├── ascii-tool          # launcher script
├── ascii-tool.desktop  # desktop entry
├── install.sh          # manual installer
├── screenshots/        # captured examples
├── LICENSE
└── README.md
```

## License

MIT — see [LICENSE](LICENSE).
