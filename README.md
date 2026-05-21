# homebrew-tap

[Homebrew](https://brew.sh) tap for [Horizon AI](https://horizonaai.dev) — the personal AI agent that runs on your machine.

<img src="https://raw.githubusercontent.com/ErnestKostevich/horizon-genesis/main/assets/icon.png" alt="Horizon AI" width="96" height="96" />

## Install

```bash
brew tap ErnestKostevich/tap
brew install horizon
```

Then:

```bash
horizon setup    # add your first AI provider key (30 seconds)
horizon          # launch the interactive TUI
horizon mobile   # pair a phone via QR code
```

## Available formulae

- **horizon** — the CLI binary for macOS (Apple Silicon + Intel) and Linux x64.

## Updating

When a new `cli-v*.*.*` release is published on
[`ErnestKostevich/horizon-genesis`](https://github.com/ErnestKostevich/horizon-genesis),
update `Formula/horizon.rb` with the new version + SHA256 values:

```bash
cd horizon-genesis
node dist-tools/update-hashes.js --tag cli-v0.0.2
cp dist-tools/homebrew-tap/Formula/horizon.rb ../homebrew-tap/Formula/horizon.rb
cd ../homebrew-tap && git add Formula/horizon.rb && git commit -m "horizon 0.0.2" && git push
```

Users pick up the new version on their next `brew update && brew upgrade horizon`.

## Links

- [Horizon website](https://horizonaai.dev)
- [Source code](https://github.com/ErnestKostevich/horizon-genesis)
- [Documentation](https://horizonaai.dev/docs)
- [License: BUSL-1.1](https://github.com/ErnestKostevich/horizon-genesis/blob/main/LICENSE)
