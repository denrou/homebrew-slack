class Slack < Formula
  desc "Unread Slack messages in the terminal, with a screen to read and reply"
  homepage "https://github.com/denrou/slack"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/denrou/slack/releases/download/v0.15.0/slack-v0.15.0-aarch64-apple-darwin.tar.gz"
      sha256 "1233b1efefc6f2dc6e41e87342b31d8193059667fc151e992e1388f7f824e6cf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/denrou/slack/releases/download/v0.15.0/slack-v0.15.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "49d8d15260a07498cc497ad4a253a31042e9d9fc750e46a0138e146b51b29325"
    end
  end

  def install
    bin.install "slack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slack --version")
  end
end
