class Shrd < Formula
  desc "Share anything instantly - CLI-first content sharing"
  homepage "https://github.com/Stoffberg/shrd.sh"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Stoffberg/shrd.sh/releases/download/cli-v#{version}/shrd-x86_64-apple-darwin.tar.gz"
      sha256 "1c7b356a9bbd28451f8845992f953883afe2f2bead361568e4665f8a36c07a78"
    end
    on_arm do
      url "https://github.com/Stoffberg/shrd.sh/releases/download/cli-v#{version}/shrd-aarch64-apple-darwin.tar.gz"
      sha256 "9e5d8dafacfff0136fec35f21c897c8c7ba60fbecbcfc7e655a5ddb7155288c1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Stoffberg/shrd.sh/releases/download/cli-v#{version}/shrd-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2b5f7b02b5edf3df3e5866f7a73a8463e3c63477b55ec1098c752d603666d965"
    end
    on_arm do
      url "https://github.com/Stoffberg/shrd.sh/releases/download/cli-v#{version}/shrd-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ed028787b5aa0a0ab843323dd15e78bb28bb34faef84e30678f107aaac4fe451"
    end
  end

  def install
    bin.install "shrd"
  end

  test do
    assert_match "shrd", shell_output("#{bin}/shrd --version")
  end
end
