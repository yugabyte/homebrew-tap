class DebeziumAT0rc12521815 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc1.1.8.15/debezium-server.tar.gz"
    version "0rc1.2.5.2-1.8.15"
    sha256 "e69b1377b4bc19318899ff09fa223e06657ac567046f45fc0897c0dafc0ac03d"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end