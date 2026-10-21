class Slack < Formula
  desc "Unread Slack messages in the terminal, with a screen to read and reply"
  homepage "https://github.com/denrou/slack"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/denrou/slack/releases/download/v0.8.0/slack-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "cf20c0043e1d37f0dba929f68bfcf65341f1dba135c320d94caee63aba0dabfd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/denrou/slack/releases/download/v0.8.0/slack-v0.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3524b2f2cf0e3034eab6a799e69db5b01d8233203364ec78176c91665a8bb451"
    end
  end

  def install
    bin.install "slack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slack --version")
  end
end
