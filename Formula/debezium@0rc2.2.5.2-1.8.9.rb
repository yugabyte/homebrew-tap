class DebeziumAT0rc2252189 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc2.1.8.9/debezium-server.tar.gz"
    version "0rc2.2.5.2-1.8.9"
    sha256 "0c85815c56fc9f4c4aff47ca8fdcf918b384380bb92a20eef293b27ca91d5e80"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end