cask "autopair" do
  version "1.2.35"
  sha256 "c3b54fe3045520e2accff357c324677608e6f1349275c720f8f7c797643f5dd6"

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
