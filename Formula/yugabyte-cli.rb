class YugabyteCli < Formula
  desc "High-performance distributed SQL database Yugabyte DB"
  homepage "https://yugabyte.com"
  url "https://downloads.yugabyte.com/yugabyte-2.0.5.2-darwin.tar.gz"
  sha256 "8d9b939fe10ba4116c569e27b5b177e9249e448a369dc92b42f5f4a41fa5c8b6"
  depends_on :java => "1.8"
  depends_on "python"

  def install
    rm_f buildpath/"lib/cassandra-driver-internal-only-3.13.0.post0-743d942c.zip"
    rm_f buildpath/"lib/futures-2.1.6-py2.py3-none-any.zip"
    rm_f buildpath/"lib/six-1.7.3-py2.py3-none-any.zip"
    libexec.install Dir["*"]
    bin.install_symlink libexec/"postgres/bin/ysqlsh"
    bin.install_symlink libexec/"bin/cqlsh"
  end
  
  test do
    system "#{opt_prefix}/ysqlsh", "--help"
  end
end
