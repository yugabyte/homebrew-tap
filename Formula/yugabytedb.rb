class Yugabytedb < Formula
  desc "High-performance distributed SQL database Yugabyte DB"
  homepage "https://www.yugabyte.com/"
  url "https://downloads.yugabyte.com/releases/2.16.0.0/yugabyte-2.16.0.0-b90-darwin-x86_64.tar.gz"
  version "2.16.0.0"
  sha256 "dbbf1ff2e3226ca256267b0ec2eaa05c00a9c1b6496b2a63e7915a83d5dd1371"
  license "Apache-2.0"

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