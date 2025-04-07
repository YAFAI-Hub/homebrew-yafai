class Core < Formula
  desc "Core CLI tool from YAFAI-Hub"
  homepage "https://github.com/${{ steps.vars.outputs.repo }}"
  url "${{ steps.vars.outputs.url }}"
  sha256 "${{ steps.vars.outputs.sha }}"
  license "MIT"
  depends_on "go" => :build

  def install
      system "go", "build", *std_go_args(output: bin/"core")
  end

  test do
      assert_match "core version", shell_output("\#{bin}/core --version")
  end
end