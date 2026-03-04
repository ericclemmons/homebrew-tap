class AgentNative < Formula
  desc "Control macOS native apps via the Accessibility tree for AI agents"
  homepage "https://github.com/ericclemmons/agent-native"
  version "0.1.3"
  url "https://github.com/ericclemmons/agent-native/releases/download/v#{version}/agent-native-macos.tar.gz"
  sha256 "361c8d74a6a8e7180c9079b6ccce2f8e4fb267abf37f0507f65f3782e79ff29a"

  depends_on :macos

  def install
    bin.install "agent-native"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agent-native --version")
  end
end
