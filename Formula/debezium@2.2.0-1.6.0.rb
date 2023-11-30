class DebeziumAT220160 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/debezium/"
    url "https://github.com/yugabyte/debezium/releases/download/2.2.0-1.6.0/debezium-server-2.2.0-1.6.0.tar.gz"
    version "2.2.0-1.6.0"
    sha256 "478350b166e255af1efe812c96322887f6ab8e046a3dada6939c57746b8d0227"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build
    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end
