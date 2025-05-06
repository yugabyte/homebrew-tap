class DebeziumAT2521817 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv1.8.17/debezium-server.tar.gz"
    version "2.5.2-1.8.17"
    sha256 "bd7a193f5333e20fd0724a386017f4298b950cdfea6354d6800d37c02ae4393d"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end