class DebeziumAT2521812 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv1.8.12/debezium-server.tar.gz"
    version "2.5.2-1.8.12"
    sha256 "6254c8eb035c2e1bb3a951d9c2ce416da749cbb55d5614ccb99b491246245666"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end