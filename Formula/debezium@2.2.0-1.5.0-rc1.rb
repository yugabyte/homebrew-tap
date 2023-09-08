class DebeziumAT220150Rc1 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/debezium/"
    url "https://github.com/yugabyte/debezium/releases/download/2.2.0-1.5.0-rc1/debezium-server-2.2.0-1.5.0-rc1.tar.gz"
    version "2.2.0-1.5.0-rc1"
    sha256 "e2b3ffacb6c80cc4618c36396d9d7329cad5f639081bc1d319b167f40c01a76e"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build
    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end
