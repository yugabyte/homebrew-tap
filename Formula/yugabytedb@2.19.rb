class YugabytedbAT219 < Formula
    desc "High-performance distributed SQL database Yugabyte DB"
    homepage "https://www.yugabyte.com/"
    url "https://downloads.yugabyte.com/releases/2.19.0.0/yugabyte-2.19.0.0-b190-darwin-x86_64.tar.gz"
    version "2.19.0.0"
    sha256 "c4b80a905e9a586a0b66842f4385d8d7c9e2a01472d406d2a3d321a55e68163c"
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
  