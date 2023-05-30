class YbVoyagerAT130 < Formula
    desc "YugabyteDB's migration tool"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/archive/refs/tags/yb-voyager/v1.3.0.tar.gz"
    sha256 "a072e880d62731187383c46ffd2e85c09d4391e4e36e1feee04d85dc392f8a2a"
    license "Apache-2.0"
  
    depends_on "go" => :build
    depends_on "libpq"
    depends_on "yugabyte/tap/debezium"
  
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
