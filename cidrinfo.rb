class Cidrinfo < Formula
  desc "Go tool to print info from the given CIDR like the ranges"
  homepage "https://github.com/wiztools/cidrinfo"
  url "https://github.com/wiztools/cidrinfo/archive/0.1.1.tar.gz"
  sha256 "3c4c99003188edb219619a6878f260de959690ffc93e5aa3f9d41c69fa76c9c5"
  depends_on "go" => :build

  def install
    system "go build"
    bin.install "cidrinfo" => "cidrinfo"
  end

  test do
    system "#{bin}/cidrinfo", "127.0.0.1/32"
  end
end
