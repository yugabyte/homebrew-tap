class DebeziumAT220150Rc2 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/debezium/"
    url "https://github.com/yugabyte/debezium/releases/download/2.2.0-1.5.0-rc2/debezium-server-2.2.0-1.5.0-rc2.tar.gz"
    version "2.2.0-1.5.0-rc2"
    sha256 "397190bd5bebd6699f9bc129b1ed06cffb6ca13efe7837b9bf743ce446800e12"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build
    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end
