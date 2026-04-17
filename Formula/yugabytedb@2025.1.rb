class YugabytedbAT20251 < Formula
  desc "High-performance distributed SQL database Yugabyte DB"
  homepage "https://www.yugabyte.com/"
  version "2025.1.3.2"
  license "Apache-2.0"

  keg_only :versioned_formula

  on_arm do
    url "https://downloads.yugabyte.com/releases/2025.1.3.2/yugabyte-2025.1.3.2-b1-darwin-arm64.tar.gz"
    sha256 "edff7f1bfdcc7fc5b3c49d6e456ee8c5d9c26c1ee08dd2c45042c540363d612c"
  end

  on_intel do
    url "https://downloads.yugabyte.com/releases/2025.1.3.2/yugabyte-2025.1.3.2-b1-darwin-x86_64.tar.gz"
    sha256 "37a905d1fd603359350dfb7a87a76b3dcdca36f819d8a77abfe94d3940021866"
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
