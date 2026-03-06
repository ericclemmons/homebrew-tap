cask "aside" do
  version "0.0.3"
  sha256 "981622adaeaad47c72b29a60254207c07086eccc8c6b8ce1e037031e46f3e2f1"

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
