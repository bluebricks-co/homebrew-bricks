# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class BricksAT1314 < Formula
  desc "Bricks CLI - Infrastructure Control Plane and Orchestration"
  homepage "https://bluebricks.co"
  version "1.31.4"
  license ":cannot_represent"

  on_macos do
    url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.31.4/bricks_1.31.4_darwin_all.tar.gz"
    sha256 "e54e0e0fbdf762aac3fe300f4cf3f75d661b504293910cf1ae6a25df9ec33efd"

    def install
      bin.install "bricks"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.31.4/bricks_1.31.4_linux_amd64.tar.gz"
        sha256 "b93b97f56299ea80e656e1f3052bd528ced9e5eeb78deb02e8d8d2842203e245"

        def install
          bin.install "bricks"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.31.4/bricks_1.31.4_linux_arm64.tar.gz"
        sha256 "9592fea67cc1ef3d41c9c7aca9d74dd7dec98089e1751ad82f2ca4560c3365cc"

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
