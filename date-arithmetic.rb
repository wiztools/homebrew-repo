class DateArithmetic < Formula
  desc "Cli tool written in Java to do date arithmetic"
  homepage "https://github.com/wiztools/date-arithmetic/"
  url "https://github.com/wiztools/date-arithmetic/releases/download/date-arithmetic-1.1/date-arithmetic-1.1.jar"
  sha256 "9f4fd23c277c599961955234e72a264961faed7f0e814f13428bbe412aebc394"

  bottle :unneeded
  depends_on :java => "1.8"

  def install
    libexec.install "date-arithmetic-#{version}.jar"
    bin.write_jar_script libexec/"date-arithmetic-#{version}.jar", "date-arithmetic"
  end

  test do
    system "true"
  end
end
