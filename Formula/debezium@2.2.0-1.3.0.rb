class DebeziumAT220130 < Formula
    desc "Debezium is an open source distributed platform for change data capture"
    homepage "https://github.com/yugabyte/debezium/"
    url "https://github.com/yugabyte/debezium/archive/da43ac760a2d82669fca3ef36c47bcc4bdbb25b1.tar.gz"
    version "2.2.0-1.3.0"
    sha256 "98548b241f1bf5ca18404d0d4602ad991b0331cf52d307087a097490d136a4d7"
    license "Apache-2.0"
    depends_on "maven" => :build
    depends_on "java11" => :build
    def install
        ENV.deparallelize
        system "sh", "buildDebeziumServer.sh"
        system "tar", "-xvzf", "debezium-server/debezium-server-dist/target/debezium-server-dist-2.2.0-SNAPSHOT.tar.gz"
        prefix.install "debezium-server"
    end
end
