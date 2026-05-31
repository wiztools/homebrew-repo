class Dnsqry < Formula
  desc "Fast and simple DNS query tool"
  homepage "https://github.com/wiztools/dnsqry"
  url "https://github.com/wiztools/dnsqry/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "22d585697abd3096d9afe9022264c3b8f9214e0fccff1bcf3b1d452b8b4e7af2"
  license "MIT"
  revision 1

  bottle do
    root_url "https://github.com/wiztools/homebrew-repo/releases/download/dnsqry-0.2.0_1"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "e16c671cfa4e128fd202f0e8522f17b42d6090c0e4ec21c54be689468abc0eb4"
    sha256 cellar: :any,                 x86_64_linux: "fc5a3fd2f539607d73e06f37e0343b08437a2fb499251c8be46036e9dfa30193"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "DNS query tool", shell_output("#{bin}/dnsqry --help")
    assert_match "google", shell_output("#{bin}/dnsqry --help")
  end
end
