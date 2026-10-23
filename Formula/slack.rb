class Slack < Formula
  desc "Unread Slack messages in the terminal, with a screen to read and reply"
  homepage "https://github.com/denrou/slack"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/denrou/slack/releases/download/v0.17.0/slack-v0.17.0-aarch64-apple-darwin.tar.gz"
      sha256 "fb33873fb1570c0f7436cf415daadc3e2b5f7b1e087fc76fb815121b3ea3fbd1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/denrou/slack/releases/download/v0.17.0/slack-v0.17.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9a1120280d7ca1e63bb9f848ac4a865b0698e962124881599a78c384b64c2bf3"
    end
  end

  def install
    bin.install "slack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slack --version")
  end
end
