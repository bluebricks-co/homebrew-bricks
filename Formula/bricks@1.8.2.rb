# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class BricksAT182 < Formula
  desc "Bricks CLI - Infrastructure Control Plane and Orchestration"
  homepage "https://bluebricks.co"
  version "1.8.2"
  license ":cannot_represent"

  on_macos do
    url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.8.2/bricks_1.8.2_darwin_all.tar.gz"
    sha256 "5eda1f9e5748d6e1809d21481cb3d04c78b5bce01fc3eac21a86dbed80f8da28"

    def install
      bin.install "bricks"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.8.2/bricks_1.8.2_linux_amd64.tar.gz"
        sha256 "8757f0011c4af941ffccd036538c2dc0650f6f5cfcd9d93cb5a1a3f6b735ab4a"

        def install
          bin.install "bricks"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.8.2/bricks_1.8.2_linux_arm64.tar.gz"
        sha256 "73712526a1ece38b15b1100e4d0e0a2ff4ce292d30de999281938b14d62e9b1f"

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