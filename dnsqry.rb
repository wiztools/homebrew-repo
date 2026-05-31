class Dnsqry < Formula
  desc "Fast and simple DNS query tool"
  homepage "https://github.com/wiztools/dnsqry"
  url "https://github.com/wiztools/dnsqry/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "22d585697abd3096d9afe9022264c3b8f9214e0fccff1bcf3b1d452b8b4e7af2"
  license "MIT"
  revision 1

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "DNS query tool", shell_output("#{bin}/dnsqry --help")
    assert_match "google", shell_output("#{bin}/dnsqry --help")
  end
end
