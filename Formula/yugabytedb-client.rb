class YugabytedbClient < Formula
  desc "High-performance distributed SQL database Yugabyte DB"
  homepage "https://yugabyte.com"
  url "https://downloads.yugabyte.com/yugabyte-client-2.1.1.0-darwin.tar.gz"
  sha256 "102a85f1ad9e02df46edeae0d2ef126aefd2b594e8a335284facf94d812dc8c3" 
  
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
