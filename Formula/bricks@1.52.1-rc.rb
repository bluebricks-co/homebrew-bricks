# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class BricksAT1521Rc < Formula
  desc "Bricks CLI - Infrastructure Control Plane and Orchestration"
  homepage "https://bluebricks.co"
  version "1.52.1-rc"
  license ":cannot_represent"

  on_macos do
    url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.52.1-rc/bricks_1.52.1-rc_darwin_all.tar.gz"
    sha256 "8f2c2ae8b46b19d4a19fa7aefa1f8e37618e76c28ffa398d875889411d791cf2"

    def install
      bin.install "bricks"
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.52.1-rc/bricks_1.52.1-rc_linux_amd64.tar.gz"
      sha256 "e929e057c00b54e2bab14d3fbb1c71357e7a98f2001aec55f8d68c02fcfc6439"
      def install
        bin.install "bricks"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.52.1-rc/bricks_1.52.1-rc_linux_arm64.tar.gz"
      sha256 "5ef668776179cd8d76f61ba65352893c1bde3d7f6decd46a28a9eb799269757f"
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
