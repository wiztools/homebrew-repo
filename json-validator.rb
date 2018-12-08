class JsonValidator < Formula
  desc "Cli Json validator and formattor"
  homepage "https://github.com/wiztools/json-validator/"
  url "https://github.com/wiztools/json-validator/releases/download/0.2.4/json-validator-fat-0.2.4.jar"
  sha256 "f9ffa9ec957d23140c765f1f20cddf9a6e16d9671b851bebef500ad12f34338a"

  depends_on :java => "1.8"

  def install
    libexec.install "json-validator-fat-#{version}.jar"
    bin.write_jar_script libexec/"json-validator-fat-#{version}.jar", "json-validator"
  end

  test do
    system "#{bin}/json-validator", "-h"
  end
end
