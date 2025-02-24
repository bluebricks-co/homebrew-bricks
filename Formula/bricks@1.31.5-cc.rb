# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class BricksAT1315Cc < Formula
  desc "Bricks CLI - Infrastructure Control Plane and Orchestration"
  homepage "https://bluebricks.co"
  version "1.31.5-cc"
  license ":cannot_represent"

  on_macos do
    url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.31.5-cc/bricks_1.31.5-cc_darwin_all.tar.gz"
    sha256 "811823178d9871fd38594eb146f29d167a25e8c5760f9e8fc7b2fa5eac41bfb0"

    def install
      bin.install "bricks"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.31.5-cc/bricks_1.31.5-cc_linux_amd64.tar.gz"
        sha256 "0dc736017ec06d1b1bc3a049cce1cda54e04dfa551e1620facd2ecc3f16a6e33"

        def install
          bin.install "bricks"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.31.5-cc/bricks_1.31.5-cc_linux_arm64.tar.gz"
        sha256 "d84cb712b8381d51debb1086176b9c7fe3618250fad19e328b17e57acd1cddb5"

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
