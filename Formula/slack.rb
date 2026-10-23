class Slack < Formula
  desc "Unread Slack messages in the terminal, with a screen to read and reply"
  homepage "https://github.com/denrou/slack"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/denrou/slack/releases/download/v0.18.0/slack-v0.18.0-aarch64-apple-darwin.tar.gz"
      sha256 "21b588561ce52d8073bd9c1bdd8f62303091f0700f9ff8564425104627aee9cf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/denrou/slack/releases/download/v0.18.0/slack-v0.18.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "75dce98206d4d5b16d53f7cec0fb96e781fd213cc359b52e3f75c00b7b9fe766"
    end
  end

  def install
    bin.install "slack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slack --version")
  end
end
