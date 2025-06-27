class DebeziumAT0rc1252202571 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc1.2025.7.1/debezium-server.tar.gz"
    version "0rc1.2.5.2-2025.7.1"
    sha256 "3034432ce8e3f0c36c89eec0b6c0fd56576fd66d2641f57a0b4f8f55c6fcc2b8"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end