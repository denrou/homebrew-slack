class Slack < Formula
  desc "Unread Slack messages in the terminal, with a screen to read and reply"
  homepage "https://github.com/denrou/slack"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/denrou/slack/releases/download/v0.16.1/slack-v0.16.1-aarch64-apple-darwin.tar.gz"
      sha256 "ad191690fb223bb0584a2bf62d7ab4dfc7a2b26f3ccd9ceb56398ea211576a2d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/denrou/slack/releases/download/v0.16.1/slack-v0.16.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e764a0b94eb2e5f3a80398b21665fda9d0075f2e9ebca4f053067146c989f640"
    end
  end

  def install
    bin.install "slack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slack --version")
  end
end
