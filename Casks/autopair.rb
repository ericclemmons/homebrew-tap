cask "autopair" do
  version "1.2.4"
  sha256 "5ae30c1e7ba37f30c5db590b8b2ac605f4a1d9960dce59c3d47dee9526f8741e"

  url "https://github.com/ericclemmons/autopair/releases/download/v#{version}/AutoPair.zip"
  name "AutoPair"
  desc "Automatically connect Bluetooth devices when plugged into power"
  homepage "https://github.com/ericclemmons/autopair"

  app "AutoPair.app"
end
