cask "codex-micro-mapper" do
  version "0.1.1"
  sha256 "00fe75cbba5c55a3d5bbf186ca2dbaa95221d89a38d39069373b88b4e4be1007"

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
