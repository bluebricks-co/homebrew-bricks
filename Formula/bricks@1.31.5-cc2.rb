# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class BricksAT1315Cc2 < Formula
  desc "Bricks CLI - Infrastructure Control Plane and Orchestration"
  homepage "https://bluebricks.co"
  version "1.31.5-cc2"
  license ":cannot_represent"

  on_macos do
    url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.31.5-cc2/bricks_1.31.5-cc2_darwin_all.tar.gz"
    sha256 "f592a683e4909a97f165ff5ccb2bf27cfa65cd1d9dccd78087503a43a30a348a"

    def install
      bin.install "bricks"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.31.5-cc2/bricks_1.31.5-cc2_linux_amd64.tar.gz"
        sha256 "b603c7e9d87b7f88e833f73cf850c3ef3f13f8ed0c0cc2a343efc1d3ec8581f5"

        def install
          bin.install "bricks"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.31.5-cc2/bricks_1.31.5-cc2_linux_arm64.tar.gz"
        sha256 "b17c246eee7c0ea6b4dd98a108902c9ca43a33cfdf382fbb6c21ecd29da5a482"

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
