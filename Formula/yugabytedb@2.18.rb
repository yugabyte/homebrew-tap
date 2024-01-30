class YugabytedbAT218 < Formula
    desc "High-performance distributed SQL database Yugabyte DB"
	homepage "https://www.yugabyte.com/"
    version "2.18.5.2"
    url "https://downloads.yugabyte.com/releases/2.18.5.2/yugabyte-2.18.5.2-b1-linux-x86_64.tar.gz"
    sha256 "84d34026734faa51e2d5a84c5c54e2d58f8cd44d77347af85cc6a1845e780ae0"
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
  