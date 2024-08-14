class YbSysbenchAT100 < Formula
    desc "Scriptable database and system performance benchmark for YugabyteDB"
    homepage "https://github.com/shaharuk-yb/sysbench/"
    url "https://github.com/shaharuk-yb/sysbench/archive/1.0.0/sysbench-1.0.0.tar.gz"
    sha256 "48c3741303d1fc93f79c7caba30b91ed5d3cdbd8c2e34f3d14d82bfade56a4ef"
    version "1.0.0"
    license "GPL-2.0-or-later"

    depends_on "autoconf" => :build
    depends_on "automake" => :build
    depends_on "libtool" => :build
    depends_on "pkg-config" => :build
    depends_on "libaio" => :build
    depends_on "postgresql"
    
    def install
        system "autoreconf", "-vif"
        system "./configure", "--without-mysql", "--with-pgsql", "--without-gcc-arch"
        system "make", "install"
    end

    test do
        system "#{bin}/sysbench", "--version"
    end
end
