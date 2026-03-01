cask "autopair" do
  version "1.2.10"
  sha256 "3571d77640caaf6b772fb4c2ec21b8f0a792733f50591b3d86c356bb94b270cd"

  url "https://github.com/ericclemmons/autopair/releases/download/v#{version}/AutoPair.zip"
  name "AutoPair"
  desc "Automatically connect Bluetooth devices when plugged into power"
  homepage "https://github.com/ericclemmons/autopair"

  app "AutoPair.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/AutoPair.app"]
  end
end
