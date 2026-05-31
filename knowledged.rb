class Knowledged < Formula
  desc "Self-organizing Git-backed knowledge base with HTTP and CLI interfaces"
  homepage "https://github.com/wiztools/knowledged"
  url "https://github.com/wiztools/knowledged/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "b80983bfe136fe021f6d56bce6b268f64406d7feb50ed8bc7315d3afcc86fecd"
  license "MIT"
  revision 1

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
