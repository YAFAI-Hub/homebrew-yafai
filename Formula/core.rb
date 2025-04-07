class Core < Formula
    desc "Core CLI tool from YAFAI-Hub"
    homepage "https://github.com/YAFAI-Hub/core"
    url "https://github.com/YAFAI-Hub/core/archive/refs/tags/v0.0.1.tar.gz"
    sha256 "0010229d93545fb9b2abbbb76c0f05a029446aed596910e6c5f5fdd90cf36e7c"
    license "MIT"

    depends_on "go" => :build

    def install
        system "go", "build", *std_go_args(output: bin/"yafai-core")
    end

    test do
        assert_match "core version", shell_output("\#{bin}/yafai-core --version")
    end
end
