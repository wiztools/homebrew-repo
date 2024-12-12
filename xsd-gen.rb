class XsdGen < Formula
  desc "Java cli tool for generating XSD from an XML"
  homepage "https://github.com/wiztools/xsd-gen/"
  url "https://github.com/wiztools/xsd-gen/releases/download/v0.3.0/xsd-gen-0.3.0-fat.jar"
  sha256 "4fbcb9fa5c1f60f4fcf1e3d0628aa9fe2847b55ba1bf4d11974c6bad3b703ebb"

  bottle :unneeded
  depends_on macos: ">= :big_sur"
  depends_on "openjdk@21"

  def install
    system "jar"
    libexec.install "xsd-gen-0.3.0-fat.jar"
    # bin.write_jar_script libexec/"xsd-gen-0.3.0-fat.jar", "xsd-gen"
    (bin/"xsd-gen").write <<~EOS
      #!/bin/bash
      export JAVA_HOME="#{Language::Java.overridable_java_home_env("21")[:JAVA_HOME]}"
      exec "${JAVA_HOME}/bin/java" -jar "#{libexec}/xsd-gen-0.3.0-fat.jar" "$@"
    EOS
  end

  test do
    system "#{bin}/xsd-gen", "-h"
  end
end
