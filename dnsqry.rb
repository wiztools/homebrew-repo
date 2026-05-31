class Dnsqry < Formula
  desc "Fast and simple DNS query tool"
  homepage "https://github.com/wiztools/dnsqry"
  url "https://github.com/wiztools/dnsqry.git",
      revision: "0fefaac3eedb146682664565065ef29e9ac99095"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "DNS query tool", shell_output("#{bin}/dnsqry --help")
    assert_match "google", shell_output("#{bin}/dnsqry --help")
  end
end
