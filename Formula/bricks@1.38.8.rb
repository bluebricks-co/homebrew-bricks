# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class BricksAT1388 < Formula
  desc "Bricks CLI - Infrastructure Control Plane and Orchestration"
  homepage "https://bluebricks.co"
  version "1.38.8"
  license ":cannot_represent"

  on_macos do
    url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.38.8/bricks_1.38.8_darwin_all.tar.gz"
    sha256 "00b3e2098572f1b4cd3e735432c57c829315d5032563b746c9857ee3cd0b9efd"

    def install
      bin.install "bricks"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.38.8/bricks_1.38.8_linux_amd64.tar.gz"
        sha256 "d17e19fd3c529297a76cc04e162389d2c892f3ba5d082d6e40bb227ffe02c62a"

        def install
          bin.install "bricks"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.38.8/bricks_1.38.8_linux_arm64.tar.gz"
        sha256 "d946d64a48e415cfa543863e0509aa2a2f9083109a168abb135421d34a738adc"

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
