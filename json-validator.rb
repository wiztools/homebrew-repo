class JsonValidator < Formula
  desc "Cli Json validator and formattor"
  homepage "https://github.com/wiztools/json-validator/"
  url "https://github.com/wiztools/json-validator/releases/download/0.2.1/json-validator-fat-0.2.1.jar"
  sha256 "1801eaeb11d686048be1e8d2292a080e9682661ae664ad3a07716be533ab9aee"

  depends_on :java => "1.8"

  def install
    libexec.install "json-validator-fat-#{version}.jar"
    bin.write_jar_script libexec/"json-validator-fat-#{version}.jar", "json-validator"
  end

  test do
    system "#{bin}/json-validator", "-h"
  end
end
