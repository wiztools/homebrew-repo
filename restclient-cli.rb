class RestclientCli < Formula
  desc "Tool to test HTTP/RESTful webservices."
  homepage "https://github.com/wiztools/rest-client/"
  url "https://github.com/wiztools/rest-client/releases/download/3.7.1/restclient-cli-fat-3.7.1.jar"
  sha256 "f85f2c0d516f1834745e50567f6f347b30de0531a2aca8f5476f0f973f9fe819"

  bottle :unneeded
  depends_on :java => "1.8"

  def install
    libexec.install "restclient-cli-fat-#{version}.jar"
    bin.write_jar_script libexec/"restclient-cli-fat-#{version}.jar", "restclient-cli"
  end

  test do
    system "true"
  end
end
