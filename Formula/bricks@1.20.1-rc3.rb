# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class BricksAT1201Rc3 < Formula
  desc "Bricks CLI - Infrastructure Control Plane and Orchestration"
  homepage "https://bluebricks.co"
  version "1.20.1-rc3"
  license ":cannot_represent"

  on_macos do
    url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.20.1-rc3/bricks_1.20.1-rc3_darwin_all.tar.gz"
    sha256 "e704bf19cb55861a6a51797624c67c29fa80ddbf302830c9e93f5bbf8535df3f"

    def install
      bin.install "bricks"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.20.1-rc3/bricks_1.20.1-rc3_linux_amd64.tar.gz"
        sha256 "b7e8c65fccef92b01438766e1c15853d9577ae6e2ed39f975d28968bdbd7be06"

        def install
          bin.install "bricks"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.20.1-rc3/bricks_1.20.1-rc3_linux_arm64.tar.gz"
        sha256 "8ffebf127cd3784eaf41a5627da95fa4e76feeabecbb516b5ff178da418341bb"

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