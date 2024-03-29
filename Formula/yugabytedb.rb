class Yugabytedb < Formula
  desc "High-performance distributed SQL database Yugabyte DB"
  homepage "https://www.yugabyte.com/"
  url "https://downloads.yugabyte.com/releases/2.21.0.0/yugabyte-2.21.0.0-b545-darwin-x86_64.tar.gz"
  version "2.21.0.0"
  sha256 "1d51814d0fe458c205fd543084563fca868db028f0ae271be312356c9084ca2b"
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
