class YugabytedbAT220 < Formula
  desc "High-performance distributed SQL database Yugabyte DB"
  homepage "https://www.yugabyte.com/"
  version "2.20.12.0"
  license "Apache-2.0"

  on_arm do
    url "https://downloads.yugabyte.com/releases/2.20.12.0/yugabyte-2.20.12.0-b30-darwin-arm64.tar.gz"
    sha256 "6e9adb7793c2184f5326b6f2f59d895736a43307592df5510f792ed1ec275cdf"
  end

  on_intel do
    url "https://downloads.yugabyte.com/releases/2.20.12.0/yugabyte-2.20.12.0-b30-darwin-x86_64.tar.gz"
    sha256 "897d8c592c18d483b91d7a86c66da73aeb1b3bc1813ddfe4106386218cfee549"
  end

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
