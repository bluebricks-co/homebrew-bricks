# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class BricksAT1270CfMvp2 < Formula
  desc "Bricks CLI - Infrastructure Control Plane and Orchestration"
  homepage "https://bluebricks.co"
  version "1.27.0-cf-mvp-2"
  license ":cannot_represent"

  on_macos do
    url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.27.0-cf-mvp-2/bricks_1.27.0-cf-mvp-2_darwin_all.tar.gz"
    sha256 "50976c25af0eb5a633e88e16298f933f1f7eee211a7219de79aed2836f4e10b3"

    def install
      bin.install "bricks"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.27.0-cf-mvp-2/bricks_1.27.0-cf-mvp-2_linux_amd64.tar.gz"
        sha256 "826044c36a8a21e45bbe945783ac11da8f685e7fd3a4b09c59adfaca180da300"

        def install
          bin.install "bricks"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.27.0-cf-mvp-2/bricks_1.27.0-cf-mvp-2_linux_arm64.tar.gz"
        sha256 "97323d5ba381319ddcf33571b785620c9d817356d1b4172ba20a25fd8464ce50"

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
