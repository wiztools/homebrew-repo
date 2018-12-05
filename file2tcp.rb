class File2tcp < Formula
  desc "Send file contents to TCP destination"
  homepage "https://github.com/wiztools/file2tcp/"
  url "https://github.com/wiztools/file2tcp/archive/0.1.0.tar.gz"
  sha256 "82c5c83315a05f686a8aaeba212260a486a0b6a1b11465ddb4b426bc5abce1a4"

  depends_on "go" => :build

  def install
    system "./gobuild.sh"
    bin.install ".gobuild/bin/file2tcp" => "file2tcp"
  end

  test do
    system "#{bin}/file2tcp", "-h"
  end
end
