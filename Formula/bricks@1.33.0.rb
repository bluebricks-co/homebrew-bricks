# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class BricksAT1330 < Formula
  desc "Bricks CLI - Infrastructure Control Plane and Orchestration"
  homepage "https://bluebricks.co"
  version "1.33.0"
  license ":cannot_represent"

  on_macos do
    url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.33.0/bricks_1.33.0_darwin_all.tar.gz"
    sha256 "279d6980f1844dde31c07fc5699afe57f20046c102cbccc4845677dde62c3125"

    def install
      bin.install "bricks"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.33.0/bricks_1.33.0_linux_amd64.tar.gz"
        sha256 "5eeddf202173534ee7dc3fb9c489f590e2b72e8c9d146875ae5058ac60c28164"

        def install
          bin.install "bricks"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.33.0/bricks_1.33.0_linux_arm64.tar.gz"
        sha256 "3f976efeeb828285118799379e8dc8d86b303ef9976d1306b408a2b661b19375"

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
