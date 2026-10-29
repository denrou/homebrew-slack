# homebrew-slack

This tap moved to [denrou/homebrew-tap](https://github.com/denrou/homebrew-tap), which gathers the Homebrew formulas of every denrou tool. Homebrew does not follow the move by itself for a tap it does not trust, so on each machine:

```bash
brew tap denrou/tap
brew trust denrou/tap
brew reinstall denrou/tap/slack
brew untap denrou/slack
```
