class DebeziumAT220161 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/debezium/"
    url "https://github.com/yugabyte/debezium/releases/download/2.2.0-1.6.1/debezium-server-2.2.0-1.6.1.tar.gz"
    version "2.2.0-1.6.1"
    sha256 "7c246a6c932ddf6195a1d0e89267539ed736919c21b003d56a0ec24c859e0403"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build
    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end
