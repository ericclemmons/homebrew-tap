cask "autopair" do
  version "1.2.39"
  sha256 "e1f61870797425c218ba8d60f0d5216bdb58cc4ba72e6be4a5713650c1a74767"

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
