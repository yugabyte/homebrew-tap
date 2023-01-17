class YbVoyagerAT0830 < Formula
  desc "YugabyteDB's migration tool"
  homepage "https://github.com/yugabyte/yb-voyager/"
  url "https://github.com/yugabyte/yb-voyager/archive/refs/tags/yb-voyager/v0.83.0.tar.gz"
  sha256 "f86660aed388b8f0a6d2b9a643c2db34570dbca0dc9f1b2d7cd29548434e05d5"
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
