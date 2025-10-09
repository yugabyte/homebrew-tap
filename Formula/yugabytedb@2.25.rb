class YugabytedbAT225 < Formula
  desc "High-performance distributed SQL database Yugabyte DB"
  homepage "https://www.yugabyte.com/"
  version "2.25.2.0"
  license "Apache-2.0"

  on_arm do
    url "https://downloads.yugabyte.com/releases/2.25.2.0/yugabyte-2.25.2.0-b359-darwin-arm64.tar.gz"
    sha256 "ceacd333cbdb052e9c0ff03b85ab69e3845fe91b65285497e1b54f2485738ef7"
  end

  on_intel do
    url "https://downloads.yugabyte.com/releases/2.25.2.0/yugabyte-2.25.2.0-b359-darwin-x86_64.tar.gz"
    sha256 "3a98d0e88786fcd78fb18939c6e8f664aa7d45bb314a6ce009d3d95557f826c2"
  end

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
