class Core < Formula
    desc "Core CLI tool from YAFAI-Hub"
    homepage "https://github.com/YAFAI-Hub/core"
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/YAFAI-Hub/core/releases/download/v0.0.1/yafai-core_Darwin_arm64.tar.gz"
        sha256 "759d910d6cccc471d1ad166037b9cf2a790463bf404d858a93bbc9427ef30a22"
      else
        url "https://github.com/YAFAI-Hub/core/releases/download/v0.0.1/yafai-core_Darwin_x86_64.tar.gz"
        sha256 "249b89f263e2e5996c836c7718db9a90d71362bdc1b5a47847692a9fbeb7ff33"

      end
    end
    
    on_linux do
      if Hardware::CPU.arm?

        url "https://github.com/YAFAI-Hub/core/releases/download/v0.0.1/yafai-core_Linux_arm64.tar.gz"
        sha256 "742fdeda1bfb8ecd978137b8d0631ea892442d6bbd882954f7e333aed811b15f"
      else
        url "https://github.com/YAFAI-Hub/core/releases/download/v0.0.1/yafai-core_Linux_x86_64.tar.gz"
        sha256 "21c9f2a0794c924e6050ab3eab4f1cb4babeac0ca39409c0329df078cc812a91"

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

