class DebeziumAT0rc1252202642 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/yb-voyager/"
    url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2Fv0rc1.2026.4.2/debezium-server.tar.gz"
    version "0rc1.2.5.2-2026.4.2"
    sha256 "431de0b5469018f7055bb6d1371e159b19cca366340cc4e76ed78cb9644d9122"
    license "Apache-2.0"

    def install
        ENV.deparallelize
        (prefix/"debezium-server").mkdir
        cp_r ".", prefix/"debezium-server"
    end
end