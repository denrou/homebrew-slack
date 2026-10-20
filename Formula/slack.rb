class Slack < Formula
  desc "Unread Slack messages in the terminal, with a screen to read and reply"
  homepage "https://github.com/denrou/slack"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/denrou/slack/releases/download/v0.7.1/slack-v0.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "e30b4860e627cbbd61584a2ecc1688a86d9c8f9369c39110823c9e4b4d007995"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/denrou/slack/releases/download/v0.7.1/slack-v0.7.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3a37d5765773700e57a529a3030a49942d5074139efc6abef07b3240fbaf9a1a"
    end
  end

  def install
    bin.install "slack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slack --version")
  end
end
