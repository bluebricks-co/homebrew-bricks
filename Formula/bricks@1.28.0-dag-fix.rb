# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class BricksAT1280DagFix < Formula
  desc "Bricks CLI - Infrastructure Control Plane and Orchestration"
  homepage "https://bluebricks.co"
  version "1.28.0-dag-fix"
  license ":cannot_represent"

  on_macos do
    url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.28.0-dag-fix/bricks_1.28.0-dag-fix_darwin_all.tar.gz"
    sha256 "5a8dc2d9eb33cb1c2132f8b69833605f89464064a1ba0380254273741b6f34c1"

    def install
      bin.install "bricks"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.28.0-dag-fix/bricks_1.28.0-dag-fix_linux_amd64.tar.gz"
        sha256 "8d8a86505d86bbe57dbbdf898ad8f042c8b6e7ce0a8c14d681031e0af8600ff3"

        def install
          bin.install "bricks"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.28.0-dag-fix/bricks_1.28.0-dag-fix_linux_arm64.tar.gz"
        sha256 "61724c9e3ab063ccd824757d7791a6c7c87f553814aea0642784364fb022f8ae"

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