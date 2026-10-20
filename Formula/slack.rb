class Slack < Formula
  desc "Unread Slack messages in the terminal, with a screen to read and reply"
  homepage "https://github.com/denrou/slack"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/denrou/slack/releases/download/v0.7.0/slack-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "8d7289e6d83be700e33ad4f7b3f77bb01c6677f2346833dc26217f098a8f0bed"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/denrou/slack/releases/download/v0.7.0/slack-v0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9f359416a3fc7a574ed1e8fa66b6ef7729a10c2c0292092b34265033af0e0af6"
    end
  end

  def install
    bin.install "slack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slack --version")
  end
end
