class Slack < Formula
  desc "Unread Slack messages in the terminal, with a screen to read and reply"
  homepage "https://github.com/denrou/slack"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/denrou/slack/releases/download/v0.9.0/slack-v0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "5ac05b873ef68fc38ac35d9205401a7d1f3f2a4f927694644f61937670d823d6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/denrou/slack/releases/download/v0.9.0/slack-v0.9.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "673be70ecc195bd18dc47a9749f4140cd2578a427bff692678a3257d0503ef23"
    end
  end

  def install
    bin.install "slack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slack --version")
  end
end
