class Yugabytedb < Formula
  desc "YugabyteDB Official Release"
  homepage "https://www.yugabyte.com/"
  url "https://downloads.yugabyte.com/releases/2.15.3.2/yugabyte-2.15.3.2-b1-darwin-x86_64.tar.gz"
  version "2.15.3.2"
  sha256 "d1a1e0f3581e3ef83e4370597f2a385844f78d480af666f6e7b15495be0e056e"

  depends_on "openssl@3"
  depends_on "python"
  depends_on "go" => :build
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