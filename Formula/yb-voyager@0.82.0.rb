class YbVoyagerAT0820 < Formula
  desc "YugabyteDB's migration tool"
  homepage "https://github.com/yugabyte/yb-voyager/"
  url "https://github.com/yugabyte/yb-voyager/archive/refs/tags/yb-voyager/v0.82.0.tar.gz"
  sha256 "2375d1bcc0dfabe3dcc4d90c39d007fd83869b87f4c7b9ea3cddfc938ef1be0f"
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
