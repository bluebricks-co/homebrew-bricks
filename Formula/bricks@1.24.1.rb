# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class BricksAT1241 < Formula
  desc "Bricks CLI - Infrastructure Control Plane and Orchestration"
  homepage "https://bluebricks.co"
  version "1.24.1"
  license ":cannot_represent"

  on_macos do
    url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.24.1/bricks_1.24.1_darwin_all.tar.gz"
    sha256 "0f8006f6312965213b660038207b33ffb5e59acaabf03fa5464a756412964c57"

    def install
      bin.install "bricks"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.24.1/bricks_1.24.1_linux_amd64.tar.gz"
        sha256 "7f1be5bc9af298cf9db3cfe4007d86fb0c055338f4dd7574c74e54737f521ba5"

        def install
          bin.install "bricks"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.24.1/bricks_1.24.1_linux_arm64.tar.gz"
        sha256 "99afa38638e758f88a7e5151962cd53ae6d8de0664bd48538e81469f75afaf4c"

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