class Yugabytedb < Formula
  desc "High-performance distributed SQL database Yugabyte DB"
  homepage "https://www.yugabyte.com/"
  url "https://downloads.yugabyte.com/releases/2.16.1.1/yugabyte-2.16.1.1-b3-darwin-x86_64.tar.gz"
  version "2.16.1.1"
  sha256 "25a6da6b8ca272529f27c3ae0b841d5e64d4d73d28791426ee6b348c20ab2c6e"
  license "Apache-2.0"

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
