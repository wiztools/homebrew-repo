require "language/node"

class Anyurlhttpserver < Formula
  desc "Simple API mocking tool"
  homepage "https://github.com/wiztools/anyurlhttpserver/"
  url "https://github.com/wiztools/anyurlhttpserver/archive/refs/tags/v1.1.2.tar.gz"
  sha256 "7b359ed5617d6338f764f8f1f324348564215d3a628416312387f8bc4aa4978f"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "true"
  end
end
