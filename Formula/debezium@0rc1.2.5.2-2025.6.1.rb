class DebeziumAT0rc1252202561 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc1.2025.6.1/debezium-server.tar.gz"
    version "0rc1.2.5.2-2025.6.1"
    sha256 "4e587266e493fbdf6f759a2b1a2049780db9282871b933d429e50ad7bae99c71"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end