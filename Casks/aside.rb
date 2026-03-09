cask "aside" do
  version "0.0.24"
  sha256 "6fe6ae4bb52188c87bd0af7673deeeea804c341a43d95650e5b1c7624a9193d8"

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
