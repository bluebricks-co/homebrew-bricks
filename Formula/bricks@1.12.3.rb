# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class BricksAT1123 < Formula
  desc "Bricks CLI - Infrastructure Control Plane and Orchestration"
  homepage "https://bluebricks.co"
  version "1.12.3"
  license ":cannot_represent"

  on_macos do
    url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.12.3/bricks_1.12.3_darwin_all.tar.gz"
    sha256 "bda4d5563cb94471a50c806c7729ae5289ff3474c14ebbb4a99a2d368e5411a0"

    def install
      bin.install "bricks"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.12.3/bricks_1.12.3_linux_amd64.tar.gz"
        sha256 "9d6d5556204c7a84ecdcc99d8963eac5b5d0748d329c6fd96b855bfcb96f615e"

        def install
          bin.install "bricks"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.12.3/bricks_1.12.3_linux_arm64.tar.gz"
        sha256 "b019a77950d378f2c5a3b758054688df8735ff97f0cb246c34c56e1762f459f4"

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
