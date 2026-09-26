cask "autopair" do
  version "1.2.32"
  sha256 "7f25afd82c077bc2c46f48414fd82d2ae60f0a2abcc7eafba44802f02ac080e0"

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
