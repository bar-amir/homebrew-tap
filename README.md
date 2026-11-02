# bar-amir/homebrew-tap

Homebrew casks for [Takes](https://github.com/bar-amir/takes).

```sh
brew install --cask bar-amir/tap/takes
```

Takes updates itself (Sparkle), so `brew upgrade` skips it unless you pass `--greedy`. To remove it along with its settings and logs:

```sh
brew uninstall --cask --zap takes
```

The cask is bumped automatically by the Takes release workflow.
