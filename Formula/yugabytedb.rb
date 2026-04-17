class Yugabytedb < Formula
  desc "High-performance distributed SQL database Yugabyte DB"
  homepage "https://www.yugabyte.com/"
  version "2025.2.2.2"
  license "Apache-2.0"

  on_arm do
    url "https://downloads.yugabyte.com/releases/2025.2.2.2/yugabyte-2025.2.2.2-b11-darwin-arm64.tar.gz"
    sha256 "38baecfebb92375da422fb079a8bfe12bf40a2796b06a4fea072e51d647ed327"
  end

  on_intel do
    url "https://downloads.yugabyte.com/releases/2025.2.2.2/yugabyte-2025.2.2.2-b11-darwin-x86_64.tar.gz"
    sha256 "744067bbb082e941534834136ec28afddad65c5b75bf4ef5b64fa5e43f7bd834"
  end

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
