# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class BricksAT1130 < Formula
  desc "Bricks CLI - Infrastructure Control Plane and Orchestration"
  homepage "https://bluebricks.co"
  version "1.13.0"
  license ":cannot_represent"

  on_macos do
    url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.13.0/bricks_1.13.0_darwin_all.tar.gz"
    sha256 "f597955fa7e59d44a938446e766ace5e829ead0f367e99b4d421c5389ab59d95"

    def install
      bin.install "bricks"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.13.0/bricks_1.13.0_linux_amd64.tar.gz"
        sha256 "ac7af0329751d8021e0b690c0007c6a612ec41cedf2625b2b4660a2e0b9b6484"

        def install
          bin.install "bricks"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.13.0/bricks_1.13.0_linux_arm64.tar.gz"
        sha256 "878acc4bf12f53de7a8b3d9bf447f410d4f2bef1f6126ae93d08d42a30b71cd1"

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