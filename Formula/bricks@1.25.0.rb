# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class BricksAT1250 < Formula
  desc "Bricks CLI - Infrastructure Control Plane and Orchestration"
  homepage "https://bluebricks.co"
  version "1.25.0"
  license ":cannot_represent"

  on_macos do
    url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.25.0/bricks_1.25.0_darwin_all.tar.gz"
    sha256 "ccd5b7f94e23d2485b7c4e3ae8b2cd5aeb5288d702895730086697bf90fab617"

    def install
      bin.install "bricks"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.25.0/bricks_1.25.0_linux_amd64.tar.gz"
        sha256 "07aad9c3c8d987decb14e5e5c76b8d4193c1cdcbe28b3cd3d565a1a685a98acd"

        def install
          bin.install "bricks"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.25.0/bricks_1.25.0_linux_arm64.tar.gz"
        sha256 "55e100bf28e187c0e7075ef6503ded057ec08f94e69dd5f3d40dfa662fd8198c"

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
