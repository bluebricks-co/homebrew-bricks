# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class BricksAT1280Rc < Formula
  desc "Bricks CLI - Infrastructure Control Plane and Orchestration"
  homepage "https://bluebricks.co"
  version "1.28.0-rc"
  license ":cannot_represent"

  on_macos do
    url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.28.0-rc/bricks_1.28.0-rc_darwin_all.tar.gz"
    sha256 "65e18fff45e30844016b42f3411fefb6d2f5b423244506a6c52474e5868f2667"

    def install
      bin.install "bricks"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.28.0-rc/bricks_1.28.0-rc_linux_amd64.tar.gz"
        sha256 "dc6697cbd2fee7927223ad814dffc7ccc41b9a0f36996523266467bfba749d61"

        def install
          bin.install "bricks"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.28.0-rc/bricks_1.28.0-rc_linux_arm64.tar.gz"
        sha256 "e34eaf3f48f904880ca5c9786af3ba447a0204b41048d56e916e986767fd9096"

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