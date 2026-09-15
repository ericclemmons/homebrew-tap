cask "autopair" do
  version "1.2.24"
  sha256 "0a47b0bc200ae7b650d843bfd1b011ea0acc78fb36325d06c4e1c8823db1a2b7"

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
