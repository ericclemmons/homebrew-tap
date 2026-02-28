cask "autopair" do
  version "1.0.0"
  sha256 "5dd6f55ac69ba301e551a2468d4e03ff35ce0e8f49a588d2f2f7c4c38a14dbc9"

  url "https://github.com/ericclemmons/autopair/releases/download/v#{version}/AutoPair.zip"
  name "AutoPair"
  desc "Automatically connect Bluetooth devices when plugged into power"
  homepage "https://github.com/ericclemmons/autopair"

  app "AutoPair.app"

  caveats <<~EOS
    AutoPair is not signed. After installing, run:
      xattr -rd com.apple.quarantine /Applications/AutoPair.app
    Or right-click the app and choose Open on first launch.
  EOS
end
