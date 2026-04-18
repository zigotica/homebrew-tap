class AgentSandbox < Formula
  desc "Run AI coding agents inside Docker containers for security isolation"
  homepage "https://github.com/zigotica/agent-sandbox"
  url "https://github.com/zigotica/agent-sandbox/archive/refs/tags/v2.0.0.tar.gz"
  sha256 "719038511f042e02911a9c25fcec33994bbf5e95d6cfad25d1f2b7c99f64d220"
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
