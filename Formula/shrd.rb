class Shrd < Formula
  desc "Share anything instantly - CLI-first content sharing"
  homepage "https://github.com/Stoffberg/shrd.sh"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Stoffberg/shrd.sh/releases/download/cli-v#{version}/shrd-x86_64-apple-darwin.tar.gz"
      sha256 "ecb680d36d94a531b245fe95915b4fa98850686db4380a3d949a15b850d60fef"
    end
    on_arm do
      url "https://github.com/Stoffberg/shrd.sh/releases/download/cli-v#{version}/shrd-aarch64-apple-darwin.tar.gz"
      sha256 "ef1991e1d72116018de86c87b97bcad8fa6032c8f33d4ec2b26252b0cde66e80"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Stoffberg/shrd.sh/releases/download/cli-v#{version}/shrd-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ef463afc22d2768a30c6d38d03f643462119b79f0cda1924befffb754e7a4e9e"
    end
    on_arm do
      url "https://github.com/Stoffberg/shrd.sh/releases/download/cli-v#{version}/shrd-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7b4dafcb7d4910709c4fb198440a0cde6ea7b7f3207d0bd6fd60e9232d6872b2"
    end
  end

  def install
    bin.install "shrd"
  end

  test do
    assert_match "shrd", shell_output("#{bin}/shrd --version")
  end
end
