cask "aside" do
  version "0.0.4"
  sha256 "8745e50882cb57e99b518d22936c3c1c381db897e944f51582e492d47021c562"

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
