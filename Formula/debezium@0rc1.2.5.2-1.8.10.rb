class DebeziumAT0rc12521810 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc1.1.8.10/debezium-server.tar.gz"
    version "0rc1.2.5.2-1.8.10"
    sha256 "a215eb93be9b3541045fbab99878663c8c052cfbe4b6dd2d934ffed91d1a0672"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end