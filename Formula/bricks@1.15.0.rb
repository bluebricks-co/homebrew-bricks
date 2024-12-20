# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class BricksAT1150 < Formula
  desc "Bricks CLI - Infrastructure Control Plane and Orchestration"
  homepage "https://bluebricks.co"
  version "1.15.0"
  license ":cannot_represent"

  on_macos do
    url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.15.0/bricks_1.15.0_darwin_all.tar.gz"
    sha256 "cd5dac14c2e7931a70b9e1040e3a16d9b11ee5b429c147044473bc700c2bb410"

    def install
      bin.install "bricks"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.15.0/bricks_1.15.0_linux_amd64.tar.gz"
        sha256 "5a81981b5cf3d03d032d4b4169b2996d54438b9412003f8bd2bc24e6e221aa11"

        def install
          bin.install "bricks"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.15.0/bricks_1.15.0_linux_arm64.tar.gz"
        sha256 "a93f45abfd85eb0fd4b826de3dc98ac2e7238ed0076f4c6d8e6269d04ed906a9"

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
