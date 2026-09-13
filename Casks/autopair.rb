cask "autopair" do
  version "1.2.18"
  sha256 "99468e2db1ebdbe50b11e1de9884a43414226e3fd24c9d9031865bdb2e38e94f"

  url "https://github.com/ericclemmons/autopair/releases/download/v#{version}/AutoPair.zip"
  name "AutoPair"
  desc "Hand off Bluetooth devices using a display or dock ownership trigger"
  homepage "https://github.com/ericclemmons/autopair"

  app "AutoPair.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/AutoPair.app"]
  end
end
