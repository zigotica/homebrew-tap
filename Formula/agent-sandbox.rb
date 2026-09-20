class AgentSandbox < Formula
  desc "Run AI coding agents inside Docker containers for security isolation"
  homepage "https://github.com/zigotica/agent-sandbox"
  url "https://github.com/zigotica/agent-sandbox/archive/refs/tags/v2.3.0.tar.gz"
  sha256 "f0c64b9c720a16af99ead023a3f8c236bceb69f0605694ee660b8a04e79cac3a"
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
