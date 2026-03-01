cask "autopair" do
  version "1.2.16"
  sha256 "01ef93bcaf39b843e88f190e94318336e3b09741c9cbfdc02c256a8cbe928c00"

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
