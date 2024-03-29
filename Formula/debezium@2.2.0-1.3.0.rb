class DebeziumAT220130 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/debezium/"
    url "https://github.com/yugabyte/debezium/releases/download/2.2.0-1.3.0/debezium-server-2.2.0-1.3.0.tar.gz"
    version "2.2.0-1.3.0"
    sha256 "3b4dfd62d9e61930865929c1743162a8130cc4bedda92cc4617099050b06d827"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build
    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end
