# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class BricksAT1113 < Formula
  desc "Bricks CLI - Infrastructure Control Plane and Orchestration"
  homepage "https://bluebricks.co"
  version "1.11.3"
  license ":cannot_represent"

  on_macos do
    url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.11.3/bricks_1.11.3_darwin_all.tar.gz"
    sha256 "2c38f0ca3e926fad0a69c5e2765d71835aca9efca2e81101e2611c063f1c9938"

    def install
      bin.install "bricks"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.11.3/bricks_1.11.3_linux_amd64.tar.gz"
        sha256 "3b485438d108679f37d56cef72fe81343f210775194c6b30f2a21f9c95761d53"

        def install
          bin.install "bricks"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.11.3/bricks_1.11.3_linux_arm64.tar.gz"
        sha256 "e7bbab49b596e519f901024cb1db0f5eb910a0ee07f46e311f70c15b5b914d61"

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
