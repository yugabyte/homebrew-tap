class DebeziumAT0rc12521816 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc1.1.8.16/debezium-server.tar.gz"
    version "0rc1.2.5.2-1.8.16"
    sha256 "340e8ca32999b8c421a99430d2d2fb9ba0c96759a1bd75565c6ff4de2b84c121"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end