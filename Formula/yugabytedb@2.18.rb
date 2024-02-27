class YugabytedbAT218 < Formula
	desc "High-performance distributed SQL database Yugabyte DB"
	homepage "https://www.yugabyte.com/"
	url "https://downloads.yugabyte.com/releases/2.18.5.2/yugabyte-2.18.5.2-b1-darwin-x86_64.tar.gz"
	version "2.18.5.2"
    sha256 "fe8a8b07d27aa91637f38b976e91cc35d7a575d134707b3d18cc4ce12cbed6e5"
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
