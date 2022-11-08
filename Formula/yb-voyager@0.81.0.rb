class YbVoyagerAT0810 < Formula
  desc "YugabyteDB's migration tool"
  homepage "https://github.com/yugabyte/yb-voyager/"
  url "https://github.com/yugabyte/yb-voyager/archive/refs/tags/yb-voyager/v0.81.0.tar.gz"
  sha256 "9dafa0a6eddb7f5eb4f52489ec9dba70846a66775c861ff346e6e6989d8511dc"
  license "Apache-2.0"

  depends_on "go" => :build
  depends_on "libpq"

  def install
    ENV.deparallelize
    Dir.chdir("yb-voyager") do
      system "go", "build"
      bin.install "yb-voyager"
    end
  end

  test do
    system "#{bin}/yb-voyager", "version"
  end
end
