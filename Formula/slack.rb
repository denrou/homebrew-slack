class Slack < Formula
  desc "Unread Slack messages in the terminal, with a screen to read and reply"
  homepage "https://github.com/denrou/slack"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/denrou/slack/releases/download/v0.10.0/slack-v0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "3d1d70420aa49b73f9dfbdff6a38bf37664de89290f7f3e1cc89f281b1c4e5d0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/denrou/slack/releases/download/v0.10.0/slack-v0.10.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4814eff7c0672fb742f14e83a6e0d58aa55271f20999d221eb7c824a70f85fa2"
    end
  end

  def install
    bin.install "slack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slack --version")
  end
end
