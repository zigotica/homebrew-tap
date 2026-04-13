class AgentSandbox < Formula
  desc "Run AI coding agents inside Docker containers for security isolation"
  homepage "https://github.com/zigotica/agent-sandbox"
  url "https://github.com/zigotica/agent-sandbox/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "PLACEHOLDER_WILL_BE_UPDATED_BY_CI"
  license "MIT"

  depends_on "jq"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/agent-sandbox"
  end

  test do
    assert_match "agent-sandbox", shell_output("#{bin}/agent-sandbox 2>&1", 1)
  end
end
