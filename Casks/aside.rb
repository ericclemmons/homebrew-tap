cask "aside" do
  version "1.0.14"
  sha256 "601a2c84679d24d757ddaa0e812beef0598ded8f959e658ba61986c0dc7c4e9c"

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
