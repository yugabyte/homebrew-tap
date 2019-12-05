class YugabyteClient < Formula
  desc "High-performance distributed SQL database Yugabyte DB"
  homepage "https://yugabyte.com"
  url "https://downloads.yugabyte.com/yugabyte-2.0.6.0-darwin.tar.gz"
  sha256 "96c23560845647c3dbff4e1923f4a5caec5fb34ccb2e50fccee4c19d5671f3fc"
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
