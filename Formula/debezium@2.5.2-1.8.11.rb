class DebeziumAT2521811 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv1.8.11/debezium-server.tar.gz"
    version "2.5.2-1.8.11"
    sha256 "2443d68d541875c0138e3ec5f11a432a0e4f824a44061e26f8d52582277260ca"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end