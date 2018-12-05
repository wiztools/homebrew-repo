class Anyurlhttpserver < Formula
  desc "Simple API mocking tool"
  homepage "https://github.com/wiztools/anyurlhttpserver/"
  url "https://github.com/wiztools/anyurlhttpserver/archive/v1.1.2.tar.gz"
  sha256 "7b359ed5617d6338f764f8f1f324348564215d3a628416312387f8bc4aa4978f"

  depends_on "node@10"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "true"
  end
end
