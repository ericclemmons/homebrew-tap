cask "codex-micro-mapper" do
  version "0.1.2"
  sha256 "1037d7ed9a24d8a311030dd0c06a296f2f1d4a65da431773cd7e62406b9e7686"

  url "https://github.com/ericclemmons/codex-micro-mapper/releases/download/v#{version}/Codex-Micro-Mapper.zip"
  name "Codex Micro Mapper"
  desc "Map Work Louder Codex Micro buttons to macOS keyboard shortcuts"
  homepage "https://github.com/ericclemmons/codex-micro-mapper"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Codex Micro Mapper.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Codex Micro Mapper.app"]
  end

  zap trash: "~/Library/Preferences/dev.eric.codex-micro-mapper.plist"
end
