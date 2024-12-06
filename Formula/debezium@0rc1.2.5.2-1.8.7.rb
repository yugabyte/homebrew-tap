class DebeziumAT0rc1252187 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc1.1.8.7/debezium-server.tar.gz"
    version "0rc1.2.5.2-1.8.7"
    sha256 "bdb422a9d4f5ab7b9b58c781aafb09ffbf313277c0ec73d78a596c9814a8fb3f"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end