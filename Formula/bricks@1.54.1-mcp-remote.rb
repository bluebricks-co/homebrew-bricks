# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class BricksAT1541McpRemote < Formula
  desc "Bricks CLI - Infrastructure Control Plane and Orchestration"
  homepage "https://bluebricks.co"
  version "1.54.1-mcp-remote"
  license ":cannot_represent"

  on_macos do
    url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.54.1-mcp-remote/bricks_1.54.1-mcp-remote_darwin_all.tar.gz"
    sha256 "effbf76f2e7569f199325cb539f53a594885b6cd23c789c57852a2f606a57aa6"

    def install
      bin.install "bricks"
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.54.1-mcp-remote/bricks_1.54.1-mcp-remote_linux_amd64.tar.gz"
      sha256 "8a3248b72867edbfc3dbaa5d2232c727a3b6c8238c9d3eac4290cd3bb34143e0"
      def install
        bin.install "bricks"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.54.1-mcp-remote/bricks_1.54.1-mcp-remote_linux_arm64.tar.gz"
      sha256 "61cdd8390cda68b876fcc9cbd379cd3026ca73f2cfe92612b0bb30b62ab8d319"
      def install
        bin.install "bricks"
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
