class JsonValidator < Formula
  desc "Cli Json validator and formattor"
  homepage "https://github.com/wiztools/json-validator/"
  url "https://github.com/wiztools/json-validator/releases/download/0.2.2/json-validator-fat-0.2.2.jar"
  sha256 "88a76342a1c46dc2aef785ab57a207711ab6aaada42f97146cda65f30aa3ad10"

  depends_on :java => "1.8"

  def install
    libexec.install "json-validator-fat-#{version}.jar"
    bin.write_jar_script libexec/"json-validator-fat-#{version}.jar", "json-validator"
  end

  test do
    system "#{bin}/json-validator", "-h"
  end
end
