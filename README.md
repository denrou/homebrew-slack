# homebrew-slack

Homebrew tap for [slack](https://github.com/denrou/slack), a CLI that shows the Slack messages waiting for you in the terminal and lets you answer them.

## Install

```bash
brew install denrou/slack/slack
```

The formula installs the binary of the latest [release](https://github.com/denrou/slack/releases): macOS on Apple Silicon and Linux on x86_64, the two targets the release builds. `brew upgrade` follows the releases.

## How the formula stays current

`./update` rewrites `Formula/slack.rb` for the latest release (`./update 0.8.0` for a given one) from the `checksums.txt` published with it. The [Update Formula](.github/workflows/update-formula.yml) workflow runs it, installs and tests the result, and commits it; the [release workflow](https://github.com/denrou/slack/blob/main/.github/workflows/release.yml) of the main repository dispatches it after each release.
