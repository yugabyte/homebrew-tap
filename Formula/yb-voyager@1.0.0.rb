class YbVoyagerAT100 < Formula
  desc "YugabyteDB's migration tool"
  homepage "https://github.com/yugabyte/yb-voyager/"
  url "https://github.com/yugabyte/yb-voyager/archive/refs/tags/yb-voyager/v1.0.0.tar.gz"
  sha256 "a455d70c43596781689e602beaa513158da2aa684eaeed32602eb14731f1cd41"
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
