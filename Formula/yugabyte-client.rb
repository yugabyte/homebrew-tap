class YugabyteClient < Formula
  desc "High-performance distributed SQL database Yugabyte DB"
  homepage "https://yugabyte.com"
  url "https://downloads.yugabyte.com/yugabyte-2.0.8.0-darwin.tar.gz"
  sha256 "da9f64857e38a4df29652829f80f19ddf05aa0da1bb50c4833f1b837a71ed6c6" 
  
  depends_on :java => "1.8"
  depends_on "python"

  conflicts_with "yugabyte", :because => "yugabyte also ships with YSQLSH and CQLSH"
  
  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"postgres/bin/ysqlsh"
    bin.install_symlink libexec/"bin/cqlsh"
  end
  
  test do
    system "#{opt_prefix}/ysqlsh", "--help"
  end
end
