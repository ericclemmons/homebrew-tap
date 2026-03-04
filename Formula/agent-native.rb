class AgentNative < Formula
  desc "Control macOS native apps via the Accessibility tree for AI agents"
  homepage "https://github.com/ericclemmons/agent-native"
  version "0.1.5"
  url "https://github.com/ericclemmons/agent-native/releases/download/v#{version}/agent-native-macos.tar.gz"
  sha256 "47e642a88a2b4ffa8a25630778816c43d10cd4b58365291a3a8cb1f6e7d7f356"

  depends_on :macos

  def install
    bin.install "agent-native"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agent-native --version")
  end
end
