# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class BricksAT1203Rc2 < Formula
  desc "Bricks CLI - Infrastructure Control Plane and Orchestration"
  homepage "https://bluebricks.co"
  version "1.20.3-rc2"
  license ":cannot_represent"

  on_macos do
    url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.20.3-rc2/bricks_1.20.3-rc2_darwin_all.tar.gz"
    sha256 "f0cb8dfaa1b726595fe59dcc2e171dd4b9610b3be8f62de0d9891e7f3d47a577"

    def install
      bin.install "bricks"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.20.3-rc2/bricks_1.20.3-rc2_linux_amd64.tar.gz"
        sha256 "329bd46fbe2db28bf1af95f9dd0485bd44db2df395c6fffa1dcacb35446cd17c"

        def install
          bin.install "bricks"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.20.3-rc2/bricks_1.20.3-rc2_linux_arm64.tar.gz"
        sha256 "a2e719cb916f5d374bfae8887e1412d4523878daca6f9c3533c25c656074450d"

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