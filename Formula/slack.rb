class Slack < Formula
  desc "Unread Slack messages in the terminal, with a screen to read and reply"
  homepage "https://github.com/denrou/slack"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/denrou/slack/releases/download/v0.12.0/slack-v0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "35bd7d16ad6e4762ba5f5fa2b164567719d3b7b6b3089118127bb9bcccd9222f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/denrou/slack/releases/download/v0.12.0/slack-v0.12.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d6d5dae7508f362adcaaa33922a91b45cb815cafc61b1f0b5290a3ad2a4624e9"
    end
  end

  def install
    bin.install "slack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slack --version")
  end
end
