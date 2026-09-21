cask "autopair" do
  version "1.2.31"
  sha256 "b2011f8cf40f420e18bf84ebc15eabfca4a9edcda2c00e445ba83a6fa6d7c35b"

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
