# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class BricksAT1171AwsBinToken < Formula
  desc "Bricks CLI - Infrastructure Control Plane and Orchestration"
  homepage "https://bluebricks.co"
  version "1.17.1-aws-bin-token"
  license ":cannot_represent"

  on_macos do
    url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.17.1-aws-bin-token/bricks_1.17.1-aws-bin-token_darwin_all.tar.gz"
    sha256 "e4db4b4c13858569eca576ae3e3481d7c08bbb5d4e5e831328e553206c907710"

    def install
      bin.install "bricks"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.17.1-aws-bin-token/bricks_1.17.1-aws-bin-token_linux_amd64.tar.gz"
        sha256 "c8f7b3c520657ed3f81c201bd57030cfcc4fe38224c94f5f6c9161466d3b1e1a"

        def install
          bin.install "bricks"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.17.1-aws-bin-token/bricks_1.17.1-aws-bin-token_linux_arm64.tar.gz"
        sha256 "f8c080815dbc4fb93c9fb9f87de1fe86c4d49ad5473f9d78e4e57e24268fe2e9"

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
