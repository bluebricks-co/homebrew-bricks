# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class BricksAT1340CiBeta1 < Formula
  desc "Bricks CLI - Infrastructure Control Plane and Orchestration"
  homepage "https://bluebricks.co"
  version "1.34.0-ci-beta1"
  license ":cannot_represent"

  on_macos do
    url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.34.0-ci-beta1/bricks_1.34.0-ci-beta1_darwin_all.tar.gz"
    sha256 "522facfa71b6c0e95e368729c4ec90380b7f8f04f603e4b955186e26b502990f"

    def install
      bin.install "bricks"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.34.0-ci-beta1/bricks_1.34.0-ci-beta1_linux_amd64.tar.gz"
        sha256 "7a8ea529256251d1a500e27c0cfe98de541796cada07e5682e2aa81abf2f5fc4"

        def install
          bin.install "bricks"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.34.0-ci-beta1/bricks_1.34.0-ci-beta1_linux_arm64.tar.gz"
        sha256 "20cac1f30236b90abf35f2e5fcec9261417f2e5756c8a88c9d6e524663c38457"

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
