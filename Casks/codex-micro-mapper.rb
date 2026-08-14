cask "codex-micro-mapper" do
  version "0.1.3"
  sha256 "f97b123d0f0c20f76a5d9a82b4ac1630dc5778f2402b6c2cefa0e6bdae128fbf"

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
