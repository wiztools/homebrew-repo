class JsonValidator < Formula
  desc "Cli Json validator and formattor"
  homepage "https://github.com/wiztools/json-validator/"
  url "https://github.com/wiztools/json-validator/releases/download/0.2.3/json-validator-fat-0.2.3.jar"
  sha256 "9788ce9f0de3dbb8dc1a13bb87ff3bb88d91a3ef89a13c4769466f09c7f2c345"

  depends_on :java => "1.8"

  def install
    libexec.install "json-validator-fat-#{version}.jar"
    bin.write_jar_script libexec/"json-validator-fat-#{version}.jar", "json-validator"
  end

  test do
    system "#{bin}/json-validator", "-h"
  end
end
