cask "autopair" do
  version "1.0.0"
  sha256 "PLACEHOLDER"

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
