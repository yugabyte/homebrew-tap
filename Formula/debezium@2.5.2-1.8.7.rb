class DebeziumAT252187 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv1.8.7/debezium-server.tar.gz"
    version "2.5.2-1.8.7"
    sha256 "8b16cddf587ff43b106c3603a95a6d40d76a3ad2cbc6ff59aca4893d7f80739d"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end