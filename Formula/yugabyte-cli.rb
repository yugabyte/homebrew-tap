class YugabyteCli < Formula
  desc "High-performance distributed SQL database Yugabyte DB"
  homepage "https://yugabyte.com"
  url "https://downloads.yugabyte.com/yugabyte-2.0.5.2-darwin.tar.gz"
  sha256 "8d9b939fe10ba4116c569e27b5b177e9249e448a369dc92b42f5f4a41fa5c8b6"
  depends_on :java => "1.8"
  depends_on "python"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"postgres/bin/ysqlsh"
    bin.install_symlink libexec/"bin/cqlsh"
  end
  
  test do
    system "#{opt_prefix}/ysqlsh", "--help"
  end
end
