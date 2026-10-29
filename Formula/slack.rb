class Slack < Formula
  desc "Unread Slack messages in the terminal, with a screen to read and reply"
  homepage "https://github.com/denrou/slack"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/denrou/slack/releases/download/v0.19.0/slack-v0.19.0-aarch64-apple-darwin.tar.gz"
      sha256 "176080bfe61ea83d37d5a94aa8b58d0b1196d2b780210f911f22d747cf4addda"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/denrou/slack/releases/download/v0.19.0/slack-v0.19.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cf4795fcdcb662447dbee40c9e27e2506b69d4031ffcb6395f2d723aa081453d"
    end
  end

  def install
    bin.install "slack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slack --version")
  end
end
