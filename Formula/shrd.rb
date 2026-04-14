class Shrd < Formula
  desc "Share anything instantly - CLI-first content sharing"
  homepage "https://github.com/Stoffberg/shrd.sh"
  version "0.1.9"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Stoffberg/shrd.sh/releases/download/cli-v#{version}/shrd-x86_64-apple-darwin.tar.gz"
      sha256 "293e43268ef23f9fa408b253d7003b348ea0a032e261b897036a8118520662bc"
    end
    on_arm do
      url "https://github.com/Stoffberg/shrd.sh/releases/download/cli-v#{version}/shrd-aarch64-apple-darwin.tar.gz"
      sha256 "75c5b9eed4c67e277b246a821fb6790bf87cb3de9c4dda5e2451c95621468763"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Stoffberg/shrd.sh/releases/download/cli-v#{version}/shrd-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8c0f844071c0bc81ed98d9e2ca1b647652c6490d557ad46265644e5f033f4d8e"
    end
    on_arm do
      url "https://github.com/Stoffberg/shrd.sh/releases/download/cli-v#{version}/shrd-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e8df96805890ca424381b67f38d59edb5742cda07f7a4823144797e2a4d3845e"
    end
  end

  def install
    bin.install "shrd"
  end

  test do
    assert_match "shrd", shell_output("#{bin}/shrd --version")
  end
end
