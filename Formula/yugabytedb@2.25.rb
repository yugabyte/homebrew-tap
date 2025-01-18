class YugabytedbAT225 < Formula
  desc "High-performance distributed SQL database Yugabyte DB"
  homepage "https://www.yugabyte.com/"
  url "https://downloads.yugabyte.com/releases/2.25.0.0/yugabyte-2.25.0.0-b489-darwin-x86_64.tar.gz"
  version "2.25.0.0"
  sha256 "e3a564b5b6124aacb57aac53876bfbae0cee4069aff87091c04fb25a87e6c063"
  license "Apache-2.0"

  keg_only :versioned_formula

  depends_on "python@3.9"

  def install
    ENV.deparallelize

    libexec.install Dir["*"]

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
