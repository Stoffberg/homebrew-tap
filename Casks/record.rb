cask "record" do
  version "0.1.0"

  on_intel do
    sha256 "2331cbdf04d36b278075899db75e2b77470bfe3d84c3fb49a86789cc806aaa5d"
    url "https://github.com/Stoffberg/record/releases/download/v#{version}/Record_#{version}_x64.dmg"
  end
  on_arm do
    sha256 "806cdd484448b9d170dab726daade7f1a14dc7d611a4b5e926a14edc97fa6b59"
    url "https://github.com/Stoffberg/record/releases/download/v#{version}/Record_#{version}_aarch64.dmg"
  end

  name "Record"
  desc "Privacy-first activity tracker for macOS"
  homepage "https://github.com/Stoffberg/record"

  app "Record.app"

  zap trash: [
    "~/Library/Application Support/dev.stoff.record",
  ]
end
