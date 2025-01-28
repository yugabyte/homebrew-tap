class DebeziumAT2521810 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv1.8.10/debezium-server.tar.gz"
    version "2.5.2-1.8.10"
    sha256 "4ec49b3feaac5dcf8690b6344b070ec9456b72ffa289255d365193e426da20d4"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end