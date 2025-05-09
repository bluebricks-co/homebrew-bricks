# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class BricksAT1400Rc < Formula
  desc "Bricks CLI - Infrastructure Control Plane and Orchestration"
  homepage "https://bluebricks.co"
  version "1.40.0-rc"
  license ":cannot_represent"

  on_macos do
    url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.40.0-rc/bricks_1.40.0-rc_darwin_all.tar.gz"
    sha256 "420fa1911a339181c21669183e025110b00496a721ec6252a9177b150940cc16"

    def install
      bin.install "bricks"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.40.0-rc/bricks_1.40.0-rc_linux_amd64.tar.gz"
        sha256 "5cf100e9f9cfac646d0db5f5e02d6fed1e6e513d7ae122b93c46e0de512537b3"

        def install
          bin.install "bricks"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.40.0-rc/bricks_1.40.0-rc_linux_arm64.tar.gz"
        sha256 "181cbf79c2b010dd2d375f91e65bd5588af7ff129ea5b841b1c2c2515b1f4024"

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
