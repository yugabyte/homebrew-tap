class Yugabytedb < Formula
	desc "High-performance distributed SQL database Yugabyte DB"
	homepage "https://www.yugabyte.com/"
	url "https://downloads.yugabyte.com/releases/2.20.1.3/yugabyte-2.20.1.3-b3-darwin-x86_64.tar.gz"
	version "2.20.1.3"
	sha256 "834ba81730cd572cfd9a995c0280d20f789c73a66c7837c27d2d7da9be9cfbdb"
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
