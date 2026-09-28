# Uqda Homebrew tap

This tap packages the public `v26.0.0` release of [Uqda Core](https://github.com/Uqda/Core).

Install on macOS (Apple Silicon or Intel):

```sh
brew install --cask Uqda/tap/uqda
```

Update after a newer release is published here:

```sh
brew update && brew upgrade --cask Uqda/tap/uqda
```

Uninstall the application while retaining the node identity in `/etc/uqda`:

```sh
brew uninstall --cask Uqda/tap/uqda
```

To explicitly remove the identity and logs too, use `brew uninstall --zap --cask Uqda/tap/uqda`. This permanently removes the node's identity.

The Cask pins SHA-256 checksums for both macOS packages. Please report installation problems in [Uqda Core issues](https://github.com/Uqda/Core/issues).
