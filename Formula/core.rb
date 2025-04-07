class Core < Formula
    desc "Core CLI tool from YAFAI-Hub"
    homepage "https://github.com/YAFAI-Hub/core"
    url "https://github.com/YAFAI-Hub/core/archive/refs/tags/v0.1.0.tar.gz"
    sha256 "2a60675df871930d404075d9d1ff0df97926bc511ec47f58459df8f0ff1ebb47"
    license "MIT"

    depends_on "go" => :build

    def install
        system "go", "build", *std_go_args(output: bin/"yafai-core")
    end

    test do
        assert_match "core version", shell_output("\#{bin}/yafai-core --version")
    end
end
