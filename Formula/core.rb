class Core < Formula
    desc "Core CLI tool from YAFAI-Hub"
    homepage "https://github.com/YAFAI-Hub/core"
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/YAFAI-Hub/core/releases/download/v0.0.1/yafai-core-darwin-arm64.tar.gz"
        sha256 "YOUR_ARM64_MACOS_SHA256"
      else
        url "https://github.com/YAFAI-Hub/core/releases/download/v0.0.1/yafai-core-darwin-amd64.tar.gz"
        sha256 "YOUR_AMD64_MACOS_SHA256"
      end
    end
    
    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/YAFAI-Hub/core/releases/download/v0.0.1/yafai-core-linux-arm64.tar.gz"
        sha256 "YOUR_ARM64_LINUX_SHA256"
      else
        url "https://github.com/YAFAI-Hub/core/releases/download/v0.0.1/yafai-core-linux-amd64.tar.gz"
        sha256 "YOUR_AMD64_LINUX_SHA256"
      end
    end
end
