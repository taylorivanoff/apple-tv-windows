# Apple TV for Windows

[![Release](https://img.shields.io/github/v/release/taylorivanoff/apple-tv-windows)](https://github.com/taylorivanoff/apple-tv-windows/releases)
[![Downloads](https://img.shields.io/github/downloads/taylorivanoff/apple-tv-windows/total)](https://github.com/taylorivanoff/apple-tv-windows/releases)
[![License](https://img.shields.io/github/license/taylorivanoff/apple-tv-windows)](LICENSE)

Apple TV desktop app for Windows. Loads [tv.apple.com](https://tv.apple.com) in a native **Tauri / WebView2** shell.

## Features

- **System tray** — close hides to tray; left-click toggles the window
- **Safari user-agent** — Apple web session compatibility
- **Cookie persistence** — stay signed in across restarts
- **Start with Windows** — installer registers a login item
- **Deep link** — `apple-tv://` protocol handler

## Installation

1. Download the latest installer from [Releases](https://github.com/taylorivanoff/apple-tv-windows/releases)
2. Run the installer (WebView2 Runtime is used if already installed; otherwise the bootstrapper downloads it)
3. Sign in with your Apple ID

## Security & authentication

This app is **not affiliated with Apple**. It is an unofficial desktop wrapper around Apple’s web UI.

- You sign in on Apple’s own pages inside the WebView2 window
- Your Apple ID password is never collected by this app
- Session cookies for `icloud.com` / `apple.com` are stored under this app’s `%APPDATA%` folder only

## Development

Requires Rust (MSVC), WebView2, and Bun. Sibling crates:

- `Projects/tauri-tray-base`
- `Projects/tauri-icloud-base`

```bash
bun install
bun run icon          # regenerate icons from icon.png
bun run dev
```

### Release build

```bash
bun run release
```

Installer output: `src-tauri/target/release/bundle/nsis/`

## License

[MIT](LICENSE)
