class DebeziumAT252202672 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv2026.7.2/debezium-server.tar.gz"
    version "2.5.2-2026.7.2"
    sha256 "e4a538f38b2fcf82bd65241ba7db4618e01186051ff5a9807a571016e092a868"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end