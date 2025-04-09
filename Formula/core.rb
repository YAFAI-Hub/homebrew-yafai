class Core < Formula
    desc "Core CLI tool from YAFAI-Hub"
    homepage "https://github.com/YAFAI-Hub/core"
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/YAFAI-Hub/core/releases/download/v0.0.1/yafai-core_Darwin_arm64.tar.gz"
        sha256 "e4d5cdacda0c9ce99abd9f89c61f83fdfa92ec4af49a27bc66f5399be74ac899"
      else
        url "https://github.com/YAFAI-Hub/core/releases/download/v0.0.1/yafai-core_Darwin_x86_64.tar.gz"
        sha256 "3147cde8814f207a4a13a6637f686d7c63fe7c027f85f3adec6c8e022f9964b0"

      end
    end
    
    on_linux do
      if Hardware::CPU.arm?

        url "https://github.com/YAFAI-Hub/core/releases/download/v0.0.1/yafai-core_Linux_arm64.tar.gz"
        sha256 "d7e61bd67737c5117af89952eeda2c89946333ab1b74e17c4d5f51998751e6c8"
      else
        url "https://github.com/YAFAI-Hub/core/releases/download/v0.0.1/yafai-core_Linux_x86_64.tar.gz"
        sha256 "0fb87074f1fc0567254b150901e7ff9ea70cdf0d1e6371ac48b611a4d4adf455"

      end
    end

    depends_on "go" => :build

    def install
        system "go", "build", *std_go_args(output: bin/"yafai-core")
    end

    test do
        assert_match "core version", shell_output("\#{bin}/yafai-core --version")
    end
end
