class YugabytedbAT223 < Formula
  desc "High-performance distributed SQL database Yugabyte DB"
  homepage "https://www.yugabyte.com/"
  url "https://downloads.yugabyte.com/releases/2.23.0.0/yugabyte-2.23.0.0-b710-darwin-x86_64.tar.gz"
  version "2.23.0.0"
  sha256 "acf2582363286fef36c0773d22b2fe3b23f3ed441ae1c5ae378c79af1c35b459"
  license "Apache-2.0"

  keg_only :versioned_formula

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
