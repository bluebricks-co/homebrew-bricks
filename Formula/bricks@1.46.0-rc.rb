# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class BricksAT1460Rc < Formula
  desc "Bricks CLI - Infrastructure Control Plane and Orchestration"
  homepage "https://bluebricks.co"
  version "1.46.0-rc"
  license ":cannot_represent"

  on_macos do
    url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.46.0-rc/bricks_1.46.0-rc_darwin_all.tar.gz"
    sha256 "234b68757eee0159d33e8251081ab894c0d7daab5cbce52bacc623e885b33c58"

    def install
      bin.install "bricks"
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.46.0-rc/bricks_1.46.0-rc_linux_amd64.tar.gz"
      sha256 "a825c88427b4be9c70efda16a8e31b5651ec9e1903aedea572e8817ff9b44cc4"
      def install
        bin.install "bricks"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.46.0-rc/bricks_1.46.0-rc_linux_arm64.tar.gz"
      sha256 "22ba77661f927a505429ea133950a968271c2a704a1f25d0e557bb0084c19d6f"
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
