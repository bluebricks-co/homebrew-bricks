# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class BricksAT1121 < Formula
  desc "Bricks CLI - Infrastructure Control Plane and Orchestration"
  homepage "https://bluebricks.co"
  version "1.12.1"
  license ":cannot_represent"

  on_macos do
    url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.12.1/bricks_1.12.1_darwin_all.tar.gz"
    sha256 "2b2cdf740e0c318b70ed29b4b98b100fdb1af4ddf804778edc89c9ab2a91c0a4"

    def install
      bin.install "bricks"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.12.1/bricks_1.12.1_linux_amd64.tar.gz"
        sha256 "41013152164d2413e5c40392c951ab8eddcfb6b24cc2352631cf8dc11182c82f"

        def install
          bin.install "bricks"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.12.1/bricks_1.12.1_linux_arm64.tar.gz"
        sha256 "7ce421353192a79bdca1608ddc18ec7231b3d198900d877f95f03ccc3bae647d"

        def install
          bin.install "bricks"
        end
      end
    end
  end

  def caveats
    <<~EOS
      Thank you for installing bricks! 🧱 See more documentation at https://docs.bluebricks.co.
      Run 'bricks --help' to get started.
    EOS
  end

  test do
    system "#{bin}/bricks --version"
  end
end
