class AgentSandbox < Formula
  desc "Run AI coding agents inside Docker containers for security isolation"
  homepage "https://github.com/zigotica/agent-sandbox"
  url "https://github.com/zigotica/agent-sandbox/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "d9d5da354476c335d8de25e93d058a4fe1240eec98aae30390d0a66977f77830"
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
