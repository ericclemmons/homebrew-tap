class AgentNative < Formula
  desc "Control macOS native apps via the Accessibility tree for AI agents"
  homepage "https://github.com/ericclemmons/agent-native"
  version "0.1.4"
  url "https://github.com/ericclemmons/agent-native/releases/download/v#{version}/agent-native-macos.tar.gz"
  sha256 "94eef297a3f1ef63ff91640049e4d477a3d4a415289d788a6a7f49b3f573621f"

  depends_on :macos

  def install
    bin.install "agent-native"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agent-native --version")
  end
end
