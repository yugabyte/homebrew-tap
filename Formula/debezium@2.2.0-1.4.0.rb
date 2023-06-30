class DebeziumAT220140 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/debezium/"
    url "https://github.com/yugabyte/debezium/releases/download/2.2.0-1.4.0/debezium-server-2.2.0-1.4.0.tar.gz"
    version "2.2.0-1.4.0"
    sha256 "dfbad841a9723906fe633636d59405e5886326eb3fb8b5d15f9e57f1a3bc9207"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build
    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end
