# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class BricksAT1211Rc4 < Formula
  desc "Bricks CLI - Infrastructure Control Plane and Orchestration"
  homepage "https://bluebricks.co"
  version "1.21.1-rc4"
  license ":cannot_represent"

  on_macos do
    url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.21.1-rc4/bricks_1.21.1-rc4_darwin_all.tar.gz"
    sha256 "2b982d4fc02fa2abd8164bac711962a84c0cf786d550d15587ebfb1062626571"

    def install
      bin.install "bricks"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.21.1-rc4/bricks_1.21.1-rc4_linux_amd64.tar.gz"
        sha256 "558a824104dd7573ce45cce9df96d69b7c99f8c401c9118ac2fe08151fedc9f4"

        def install
          bin.install "bricks"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.21.1-rc4/bricks_1.21.1-rc4_linux_arm64.tar.gz"
        sha256 "4d9b6b29cb4ca64b21f9b9a9b388b1734e876008ac87856ae2594a578ddcce8e"

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