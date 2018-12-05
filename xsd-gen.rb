class XsdGen < Formula
  desc "Java cli tool for generating XSD from an XML"
  homepage "https://github.com/wiztools/xsd-gen/"
  url "https://github.com/wiztools/xsd-gen/releases/download/0.2.4/xsd-gen-fat-0.2.4.jar"
  sha256 "89dabd9392a509c4649beebb3675004afd1ac6afa23737cbdd8b7d7d7241954f"

  bottle :unneeded
  depends_on :java => "1.8"

  def install
    libexec.install "xsd-gen-fat-#{version}.jar"
    bin.write_jar_script libexec/"xsd-gen-fat-#{version}.jar", "xsd-gen"
  end

  test do
    system "#{bin}/xsd-gen", "-h"
  end
end
