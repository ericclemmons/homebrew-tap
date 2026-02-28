cask "autopair" do
  version "1.2.2"
  sha256 "e87de328f1678b9cfd7a0f133d66ea9a4aa9f7eccf34172704e0c8692f5082d4"

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
