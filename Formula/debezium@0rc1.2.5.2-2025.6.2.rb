class DebeziumAT0rc1252202562 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc1.2025.6.2/debezium-server.tar.gz"
    version "0rc1.2.5.2-2025.6.2"
    sha256 "e8d53f7f1f9e4310ae0a518ed41813f6ebb289f76f6fac48bf40472790a532a7"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end