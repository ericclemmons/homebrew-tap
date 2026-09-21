cask "autopair" do
  version "1.2.30"
  sha256 "88497e75370986e170c365b52b75f7a89ccf62ee24a6261ccba1da6c3b8837b8"

  url "https://github.com/ericclemmons/autopair/releases/download/v#{version}/AutoPair.zip"
  name "AutoPair"
  desc "Hand off Bluetooth devices using display or connected-hardware triggers"
  homepage "https://github.com/ericclemmons/autopair"

  app "AutoPair.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-dr", "com.apple.quarantine", "{{appdir}}/AutoPair.app"]
  end
end
