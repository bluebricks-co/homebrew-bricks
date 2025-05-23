# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class BricksAT1350 < Formula
  desc "Bricks CLI - Infrastructure Control Plane and Orchestration"
  homepage "https://bluebricks.co"
  version "1.35.0"
  license ":cannot_represent"

  on_macos do
    url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.35.0/bricks_1.35.0_darwin_all.tar.gz"
    sha256 "a9e5af70adc6eb0e158dcb5d889590fecb3673b50cc317fef885d81d9dce27ec"

    def install
      bin.install "bricks"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.35.0/bricks_1.35.0_linux_amd64.tar.gz"
        sha256 "07a9b72c83b898eb612c8b93d8a678e849ea0e6cfbe4c6ac5cc855f59b1ebb15"

        def install
          bin.install "bricks"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.35.0/bricks_1.35.0_linux_arm64.tar.gz"
        sha256 "e5fa0e66f9154c0063c5f6c5d7120c013cdc75b71127dd7d61abba906f6d02bf"

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
