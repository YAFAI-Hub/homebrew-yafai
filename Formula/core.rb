
class Core < Formula
    desc "Core CLI tool from YAFAI-Hub"
    homepage "https://github.com/YAFAI-Hub/core"
    url "https://github.com/YAFAI-Hub/core/archive/refs/tags/v1.2.3.tar.gz"
    sha256 "replace_with_actual_sha256"
    license "MIT"
  
    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(output: bin/"core")
    end
  
    test do
      assert_match "core version", shell_output("#{bin}/core --version")
    end
  end
  