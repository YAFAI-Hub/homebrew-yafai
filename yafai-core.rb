# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class YafaiCore < Formula
  desc "Core homebrew tap"
  homepage "https://github.com/YAFAI-Hub/core"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/YAFAI-Hub/core/releases/download/v0.0.1/yafai-core_Darwin_x86_64.tar.gz"
      sha256 "59884297dce85b349c89e8983a98ce2b8c12d77cf6c80766433ad24b3018bcb4"

      def install
        bin.install "yafai-core"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/YAFAI-Hub/core/releases/download/v0.0.1/yafai-core_Darwin_arm64.tar.gz"
      sha256 "55821c85bf7d8116ef48118f9c05f1f01bdb2d0949a19286f71bdb927f87b838"

      def install
        bin.install "yafai-core"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/YAFAI-Hub/core/releases/download/v0.0.1/yafai-core_Linux_x86_64.tar.gz"
        sha256 "035322b742fc3c07be4f2c07b0ddf6bc41169c3dde963f8dcb1f5d272b76ac43"

        def install
          bin.install "yafai-core"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/YAFAI-Hub/core/releases/download/v0.0.1/yafai-core_Linux_arm64.tar.gz"
        sha256 "8863924caf9ebd4c64edfe946c8488c6d5d5dd9c82033d2ea539bf22b4329755"

        def install
          bin.install "yafai-core"
        end
      end
    end
  end
end
