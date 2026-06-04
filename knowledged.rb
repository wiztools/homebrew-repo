class Knowledged < Formula
  desc "Self-organizing Git-backed knowledge base with HTTP and CLI interfaces"
  homepage "https://github.com/wiztools/knowledged"
  url "https://github.com/wiztools/knowledged/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "b4cf4430e018989f44e889c69850130ab80f595fbe0a5ce6f87f4d0751b9b807"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(output: bin/"knowledged"), "./cmd/knowledged"
    system "go", "build", *std_go_args(output: bin/"kc"), "./cmd/kc"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/kc 2>&1", 1)
    assert_match "Usage of", shell_output("#{bin}/knowledged -h 2>&1")
  end
end
