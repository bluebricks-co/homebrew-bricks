# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class BricksAT162Beta < Formula
  desc "Bricks CLI - Infrastructure Control Plane and Orchestration"
  homepage "https://bluebricks.co"
  version "1.6.2-beta"
  license ":cannot_represent"

  on_macos do
    url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.6.2-beta/bricks_1.6.2-beta_darwin_all.tar.gz"
    sha256 "d6b2b4c44e24e4ab27b28bc9e544ec783d35b2ca50d3023d6bd5ed30d01685f3"

    def install
      bin.install "bricks"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.6.2-beta/bricks_1.6.2-beta_linux_amd64.tar.gz"
        sha256 "29dc85cb855b6e7a56eda2936d283815461e4e8c9a815c383b6bdad7f686e497"

        def install
          bin.install "bricks"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.6.2-beta/bricks_1.6.2-beta_linux_arm64.tar.gz"
        sha256 "50eb6e6faac2e40d8d74a8008644cfe0fb0a2be9d0681c2eb0834b0244fcf01b"

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