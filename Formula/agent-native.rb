class AgentNative < Formula
  desc "Control macOS native apps via the Accessibility tree for AI agents"
  homepage "https://github.com/ericclemmons/agent-native"
  version "0.1.2"
  url "https://github.com/ericclemmons/agent-native/releases/download/v#{version}/agent-native-macos.tar.gz"
  sha256 "54c69904a2785466f4b0636328bf646e0cd95c8f621980c1a925ee31e1b2c2fa"

  depends_on :macos

  def install
    bin.install "agent-native"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agent-native --version")
  end
end
