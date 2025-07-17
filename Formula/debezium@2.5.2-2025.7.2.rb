class DebeziumAT252202572 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv2025.7.2/debezium-server.tar.gz"
    version "2.5.2-2025.7.2"
    sha256 "04c19556b4825b0d8a14cf1a1fd8c94b1332b24182270fc6f8abdfcc0be76ad4"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end