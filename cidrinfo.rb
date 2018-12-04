class Cidrinfo < Formula
  desc "Go tool to print info from the given CIDR like the ranges"
  homepage "https://github.com/wiztools/cidrinfo"
  url "https://github.com/wiztools/cidrinfo/archive/0.1.0.tar.gz"
  sha256 "f0ef27524f1cb07a5be4e29739bc56fbdddfd9f60f4030e66113215f8092e2fa"
  depends_on "go" => :build

  def install
    system "./gobuild.sh"
    bin.install ".gobuild/bin/cidrinfo" => "cidrinfo"
  end

  test do
    system "#{bin}/cidrinfo", "127.0.0.1/32"
  end
end
