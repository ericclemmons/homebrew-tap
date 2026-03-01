cask "autopair" do
  version "1.2.6"
  sha256 "df5f7344272d92a0ae5cdffe8d83256413a9277340f1dbee5d46534594a4ca30"

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
