class Slack < Formula
  desc "Unread Slack messages in the terminal, with a screen to read and reply"
  homepage "https://github.com/denrou/slack"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/denrou/slack/releases/download/v0.18.1/slack-v0.18.1-aarch64-apple-darwin.tar.gz"
      sha256 "06c155bab2ec8b9b8666fdf8549335692eaf39d86a9183d59b33f48147bc54c4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/denrou/slack/releases/download/v0.18.1/slack-v0.18.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "55e8e3e7e7ba0df991bbc502ae6075a483216e7b72f686940f1bf56b1d729b7b"
    end
  end

  def install
    bin.install "slack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slack --version")
  end
end
