  class Core < Formula
  desc "Core CLI tool from YAFAI-Hub"
  homepage "https://github.com/YAFAI-Hub/core"
  url "https://github.com/YAFAI-Hub/core/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "04229c27d355210a6c1133ef01647adc49315262bcb34f881ba5b7c04f32af5b"
  license "MIT"

  depends_on "go" => :build

  def install
      system "go", "build", *std_go_args(output: bin/"core")
  end

  test do
      assert_match "core version", shell_output("\#{bin}/core --version")
  end
  end
  EOF
