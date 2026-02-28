cask "autopair" do
  version "1.2.1"
  sha256 "9ea32eef39a119c934160927ccb96a093c06a48eef954de9d220f01e9f48d4ad"

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
