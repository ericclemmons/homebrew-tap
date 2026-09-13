cask "autopair" do
  version "1.2.21"
  sha256 "ba6d8692f0fa9010d81c1915bbdfc7bfd1e116e20e21d5755e41eff60e93dc7f"

  url "https://github.com/ericclemmons/autopair/releases/download/v#{version}/AutoPair.zip"
  name "AutoPair"
  desc "Hand off Bluetooth devices using display or connected-hardware triggers"
  homepage "https://github.com/ericclemmons/autopair"

  app "AutoPair.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/AutoPair.app"]
  end
end
