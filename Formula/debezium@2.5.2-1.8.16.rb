class DebeziumAT2521816 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv1.8.16/debezium-server.tar.gz"
    version "2.5.2-1.8.16"
    sha256 "ea30584ae165a30df39b3b2a1dfa2c8d5813f1bcb2d60ec659219d58dac39826"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end