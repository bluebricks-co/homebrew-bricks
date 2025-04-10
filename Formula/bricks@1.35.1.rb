# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class BricksAT1351 < Formula
  desc "Bricks CLI - Infrastructure Control Plane and Orchestration"
  homepage "https://bluebricks.co"
  version "1.35.1"
  license ":cannot_represent"

  on_macos do
    url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.35.1/bricks_1.35.1_darwin_all.tar.gz"
    sha256 "b5496a346aff058d9a91731b9d1dc4469df9f215baee427ea780214397755676"

    def install
      bin.install "bricks"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.35.1/bricks_1.35.1_linux_amd64.tar.gz"
        sha256 "c0e61bf4ba01e94e7db46c44ab338909941fad25917bd03bcd46a8a56841c2c0"

        def install
          bin.install "bricks"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.35.1/bricks_1.35.1_linux_arm64.tar.gz"
        sha256 "7358204f55e512b5a7866f3ce27a701a67d042ede7a161904bbda13a2b29f1d6"

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
