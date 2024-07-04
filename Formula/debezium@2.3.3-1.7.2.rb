
                    class DebeziumAT233172 < Formula
                        desc "Debezium is an open source distributed platform for change data capture"
                        homepage "https://github.com/yugabyte/yb-voyager/"
                        url "https://github.com/yugabyte/yb-voyager/releases/download/yb-voyager%2F1.7.2/debezium-server.tar.gz"
                        version "2.3.3-1.7.2"
                        sha256 "2fafe1c0dc9401528685b7d9a25c9a9872adee437df0ddd9dcf3687d997cb8e0"
                        license "Apache-2.0"
                        depends_on "maven" => :build
                        depends_on "java11" => :build

                        def install
                            ENV.deparallelize
                            (prefix/"debezium-server").mkdir
                            cp_r ".", prefix/"debezium-server"
                        end
                    end
                    