class YugabytedbAT217 < Formula
	desc "High-performance distributed SQL database Yugabyte DB"
	homepage "https://www.yugabyte.com/"
	url "https://downloads.yugabyte.com/releases/2.17.0.0/yugabyte-2.17.0.0-b24-darwin-x86_64.tar.gz"
	version "2.17.0.0"
	sha256 "477c36b59979d73f9e0729e866d2611ea28c4108d76955880d6aac966130ef80"
	license "Apache-2.0"

	keg_only :versioned_formula

	depends_on "python@3.9"
	depends_on "ssed"

	def install
		ENV.deparallelize

		libexec.install Dir["*"]
		system "ssed", "-i", "s:#!/usr/bin/env python:#!/usr/bin/env python3:", "#{libexec}/bin/yugabyted"

		bin.install_symlink libexec/"bin/yugabyted"
		bin.install_symlink libexec/"postgres/bin/ysqlsh"
		bin.install_symlink libexec/"bin/ycqlsh"
	end

	test do
		system "#{bin}/yugabyted", "version"
	end
end
  