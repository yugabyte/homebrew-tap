class DebeziumAT0rc12521813 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc1.1.8.13/debezium-server.tar.gz"
    version "0rc1.2.5.2-1.8.13"
    sha256 "1f70ef4c4179b9f86f9fb3e7355a354023278bb32299acaef8e94abcf3b10ea8"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end