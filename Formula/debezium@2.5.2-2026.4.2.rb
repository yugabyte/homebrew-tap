class DebeziumAT252202642 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv2026.4.2/debezium-server.tar.gz"
    version "2.5.2-2026.4.2"
    sha256 "8e64310580035afe0c10f840a34f0eb9b60f272c1a150336e197c497f3c2f275"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end