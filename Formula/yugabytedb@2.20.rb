class YugabytedbAT220 < Formula
  desc "High-performance distributed SQL database Yugabyte DB"
  homepage "https://www.yugabyte.com/"
  url "https://downloads.yugabyte.com/releases/2.20.9.0/yugabyte-2.20.9.0-b47-darwin-x86_64.tar.gz"
  version "2.20.9.0"
  sha256 "d6b831419d8d0e26ec966356fdb3117934922802ff9a68de0631ed0798cdd486"
  license "Apache-2.0"

  keg_only :versioned_formula

  depends_on "python@3.9"

  def install
    ENV.deparallelize

    libexec.install Dir["*"]
    inreplace "#{libexec}/bin/yugabyted", "#!/usr/bin/env python", "#!/usr/bin/env python3"

    bin.install_symlink libexec/"bin/yugabyted"
    ysqlsh_symlink = "#{HOMEBREW_PREFIX}/bin/ysqlsh"
    ycqlsh_symlink = "#{HOMEBREW_PREFIX}/bin/ycqlsh"

    ysql_dump_symlink = "#{HOMEBREW_PREFIX}/bin/ysql_dump"
    ysql_dumpall_symlink = "#{HOMEBREW_PREFIX}/bin/ysql_dumpall"
    ysql_bench_symlink = "#{HOMEBREW_PREFIX}/bin/ysql_bench"

    bin.install_symlink libexec/"postgres/bin/ysqlsh" unless File.exist?(ysqlsh_symlink)
    bin.install_symlink libexec/"bin/ycqlsh" unless File.exist?(ycqlsh_symlink)

    bin.install_symlink libexec/"postgres/bin/ysql_dump" unless File.exist?(ysql_dump_symlink)
    bin.install_symlink libexec/"postgres/bin/ysql_dumpall" unless File.exist?(ysql_dumpall_symlink)
    bin.install_symlink libexec/"postgres/bin/ysql_bench" unless File.exist?(ysql_bench_symlink)
  end

  test do
    system "#{bin}/yugabyted", "version"
  end
end
