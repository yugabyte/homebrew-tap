class YugabytedbClient < Formula
  desc "High-performance distributed SQL database Yugabyte DB"
  homepage "https://yugabyte.com"
  url "https://downloads.yugabyte.com/yugabyte-2.0.11.0-darwin.tar.gz"
  sha256 "39acba6800f9d4c665ed44323502cbb650d25430716cd0ecef7135b482d2ce7d" 
  
  depends_on :java => "1.8"
  depends_on "python"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"postgres/bin/ysqlsh"
    bin.install_symlink libexec/"bin/cqlsh"
  end
  
  test do
    system "#{libexec}/bin/ysqlsh", "--help"
  end
end
