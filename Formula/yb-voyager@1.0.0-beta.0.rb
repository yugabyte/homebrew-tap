class YbVoyagerAT100Beta0 < Formula
  desc "YugabyteDB's migration tool"
  homepage "https://github.com/yugabyte/yb-voyager/"
  url "https://github.com/yugabyte/yb-voyager/archive/refs/tags/yb-voyager/v1.0.0-xbeta.0.tar.gz"
  version "1.0.0-beta.0"
  sha256 "f861453ff4b87c05cad5660dbd6997c8b758e4d9235b49b582937f6aee917c90"
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
