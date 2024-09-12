class YugabytedbAT218 < Formula
  desc "High-performance distributed SQL database Yugabyte DB"
  homepage "https://www.yugabyte.com/"
  url "https://downloads.yugabyte.com/releases/2.18.9.0/yugabyte-2.18.9.0-b17-darwin-x86_64.tar.gz"
  version "2.18.9.0"
  sha256 "1b8fcda02d7c16cc2c73b045fa603fde8b2a073fe9c3d3b71a1303c3f834941d"
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
    bin.install_symlink libexec/"postgres/bin/ysqlsh" unless File.exist?(ysqlsh_symlink)
    bin.install_symlink libexec/"bin/ycqlsh" unless File.exist?(ycqlsh_symlink)
  end

  test do
    system "#{bin}/yugabyted", "version"
  end
end
