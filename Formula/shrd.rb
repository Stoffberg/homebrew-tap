class Shrd < Formula
  desc "Share anything instantly - CLI-first content sharing"
  homepage "https://github.com/Stoffberg/shrd.sh"
  version "0.1.11"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Stoffberg/shrd.sh/releases/download/cli-v#{version}/shrd-x86_64-apple-darwin.tar.gz"
      sha256 "f667e72e428de9239921d0fc1424b1da1329fc6d9cad1fc4e039c9d1ddfb8c2f"
    end
    on_arm do
      url "https://github.com/Stoffberg/shrd.sh/releases/download/cli-v#{version}/shrd-aarch64-apple-darwin.tar.gz"
      sha256 "8f93ff7c6fa0e6910bf78b8ca78c7641f3cc20cf66f06533a26c973f473a1b99"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Stoffberg/shrd.sh/releases/download/cli-v#{version}/shrd-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d0561916bd87c3c379b65f84bceadfa36c054a543e6c406dc39abdb7797ecd38"
    end
    on_arm do
      url "https://github.com/Stoffberg/shrd.sh/releases/download/cli-v#{version}/shrd-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "43caf343bd1a35690a08e5759341222d54b1f55d48df639da07f10bf051e9dc8"
    end
  end

  def install
    bin.install "shrd"
  end

  test do
    assert_match "shrd", shell_output("#{bin}/shrd --version")
  end
end
