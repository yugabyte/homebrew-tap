class DebeziumAT220150 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/debezium/"
    url "https://github.com/yugabyte/debezium/releases/download/2.2.0-1.5.0/debezium-server-2.2.0-1.5.0.tar.gz"
    version "2.2.0-1.5.0"
    sha256 "6235cd9c3b33b61eaef2c33a49d1739e5a44db317a54861b2ffecea37e3d082e"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build
    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end
