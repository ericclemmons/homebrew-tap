cask "aside" do
  version "0.0.29"
  sha256 "70f97a13f1a06468b42fff71767d7e372ba759cf90005eebe5b632ccf2475942"

  url "https://github.com/ericclemmons/aside/releases/download/v#{version}/Aside.zip"
  name "Aside"
  desc "macOS push-to-talk voice assistant with local Parakeet STT"
  homepage "https://github.com/ericclemmons/aside"

  app "Aside.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Aside.app"]
  end
end
