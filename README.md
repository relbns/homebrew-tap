# relbns/homebrew-tap

Homebrew casks for [ClipFlow](https://github.com/relbns/ClipFlow), a clipboard manager and text expander for macOS.

```bash
brew install --cask relbns/tap/clipflow
```

ClipFlow is not notarized by Apple yet, so macOS blocks its first launch: open **System Settings → Privacy & Security**, click **Open Anyway** and confirm. Then grant Accessibility and Input Monitoring when ClipFlow asks.

Update with `brew upgrade --cask clipflow`. After an update, macOS asks for the permissions again.
