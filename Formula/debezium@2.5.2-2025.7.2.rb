class DebeziumAT252202572 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc1.2025.7.2/debezium-server.tar.gz"
    version "2.5.2-2025.7.2"
    sha256 "87ae60b51d1bc1cc4fecd8993c3419674c094843b73edbaca28f80daa8452678"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end