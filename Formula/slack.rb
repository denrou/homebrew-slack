class Slack < Formula
  desc "Unread Slack messages in the terminal, with a screen to read and reply"
  homepage "https://github.com/denrou/slack"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/denrou/slack/releases/download/v0.14.0/slack-v0.14.0-aarch64-apple-darwin.tar.gz"
      sha256 "7e3fd2ff46c265f801c28632b8a8fb27063ff984d71b88d33655ff5e5d76fb73"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/denrou/slack/releases/download/v0.14.0/slack-v0.14.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d7d327aa5185d9c6a9d94f361f0e677425c465b9c6ad33650b1cec1e773b976f"
    end
  end

  def install
    bin.install "slack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slack --version")
  end
end
