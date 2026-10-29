class Slack < Formula
  desc "Unread Slack messages in the terminal, with a screen to read and reply"
  homepage "https://github.com/denrou/slack"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/denrou/slack/releases/download/v0.20.0/slack-v0.20.0-aarch64-apple-darwin.tar.gz"
      sha256 "fb0cce913d8f88ae870e05edb8fe811569e83a1a77cc9c55f4a59c17a00dfd6b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/denrou/slack/releases/download/v0.20.0/slack-v0.20.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "11f6c213a6153d98ff0b0c895c9581c83e505daa490c14ba3933b8ffc6c7c7ef"
    end
  end

  def install
    bin.install "slack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slack --version")
  end
end
