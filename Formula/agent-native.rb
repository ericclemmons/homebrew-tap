class AgentNative < Formula
  desc "Control macOS native apps via the Accessibility tree for AI agents"
  homepage "https://github.com/ericclemmons/agent-native"
  url "https://github.com/ericclemmons/agent-native/releases/download/v#{version}/agent-native-macos.tar.gz"
  sha256 "545a8efc6886295a373ef5e0c65b5879592aeb03a5741c12d5cc1505622914b9"
  version "0.1.1"

  depends_on :macos

  def install
    bin.install "agent-native"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agent-native --version")
  end
end
