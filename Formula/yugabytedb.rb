class Yugabytedb < Formula
  desc "High-performance distributed SQL database Yugabyte DB"
  homepage "https://www.yugabyte.com/"
  url "https://downloads.yugabyte.com/releases/2024.1.2.0/yugabyte-2024.1.2.0-b77-darwin-x86_64.tar.gz"
  version "2024.1.2.0"
  sha256 "39f91d8b66fe87f383a4403bbb37350164146d7985518db27048c5b2cbb0567e"
  license "Apache-2.0"

  depends_on "python@3.9"

  def install
    ENV.deparallelize

    libexec.install Dir["*"]

    bin.install_symlink libexec/"bin/yugabyted"
    ysqlsh_symlink = "#{HOMEBREW_PREFIX}/bin/ysqlsh"
    ycqlsh_symlink = "#{HOMEBREW_PREFIX}/bin/ycqlsh"
    bin.install_symlink libexec/"postgres/bin/ysqlsh" unless File.exist?(ysqlsh_symlink)
    bin.install_symlink libexec/"bin/ycqlsh" unless File.exist?(ycqlsh_symlink)
  end

  test do
    system "#{bin}/yugabyted", "version"
  end
end
