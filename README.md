# Homebrew Tap for FerroTunnel

Official Homebrew tap for [FerroTunnel](https://github.com/MitulShah1/ferrotunnel) - an embeddable, extensible, and observable reverse tunnel for Rust developers.

## Installation

```bash
brew tap MitulShah1/ferrotunnel
brew install ferrotunnel
```

Or in one command:

```bash
brew install MitulShah1/ferrotunnel/ferrotunnel
```

## Usage

```bash
# Start server
ferrotunnel server --bind 0.0.0.0:7835

# Start client
ferrotunnel client --server <server-url>:7835 --local-addr 127.0.0.1:3000

# Show version
ferrotunnel --version
```

## Updating

```bash
brew upgrade ferrotunnel
```

## Documentation

- [Main Repository](https://github.com/MitulShah1/ferrotunnel)
- [SETUP.md](SETUP.md) - Tap maintenance guide

## License

MIT OR Apache-2.0
