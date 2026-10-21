class Slack < Formula
  desc "Unread Slack messages in the terminal, with a screen to read and reply"
  homepage "https://github.com/denrou/slack"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/denrou/slack/releases/download/v0.13.0/slack-v0.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "c97b9aee941dcfe3dcb1cd9e2fb91a27c3e836f301984c48ecaa58b4e1b3e97a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/denrou/slack/releases/download/v0.13.0/slack-v0.13.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4aebc5693db7b151e871460feca5ba7bb638300991b69244510b8546f599de45"
    end
  end

  def install
    bin.install "slack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slack --version")
  end
end
