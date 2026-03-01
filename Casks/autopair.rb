cask "autopair" do
  version "1.2.11"
  sha256 "94e47484016b0ba62626b2d061bc32481375fcc3a74db5ff9e0e95b3caf6e546"

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
