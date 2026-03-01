cask "autopair" do
  version "1.2.12"
  sha256 "493aab6593dc69d9ca3d9c616a8e86800af8b80d72e82a747056a9f2b0d5555d"

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
