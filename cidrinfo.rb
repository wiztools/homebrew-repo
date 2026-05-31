class Cidrinfo < Formula
  desc "Go tool to print info from the given CIDR like the ranges"
  homepage "https://github.com/wiztools/cidrinfo"
  url "https://github.com/wiztools/cidrinfo/archive/refs/tags/0.1.1.tar.gz"
  sha256 "3c4c99003188edb219619a6878f260de959690ffc93e5aa3f9d41c69fa76c9c5"
  revision 2

  bottle do
    root_url "https://github.com/wiztools/homebrew-repo/releases/download/cidrinfo-0.1.1_2"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "f275bc0cf7a267a10949eee406a4471cc677c2c0f194328665dfa4fa1fda55e1"
    sha256 cellar: :any,                 x86_64_linux: "4e0eea1088ca9239c4cfcf6e1c242ccba985fad13b682a37f203f551c5007fe9"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    output = shell_output("#{bin}/cidrinfo 127.0.0.1/32")
    assert_match "Network:     127.0.0.1/32", output
    assert_match "Count:       1", output
  end
end
