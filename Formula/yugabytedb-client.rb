class YugabytedbClient < Formula
  desc "High-performance distributed SQL database Yugabyte DB"
  homepage "https://yugabyte.com"
  url "https://downloads.yugabyte.com/yugabyte-2.0.10.0-darwin.tar.gz"
  sha256 "953de9bde56a327f8c1d3cea7633e4d2133c1f90fef7d39471a3d3ddd23f83a3" 
  
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
