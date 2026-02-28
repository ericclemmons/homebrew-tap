cask "autopair" do
  version "1.1.0"
  sha256 "1f4658df6c558a71eb7e08f65f9472134bd04a54c053e8a0d91a283d9c2670b9"

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
