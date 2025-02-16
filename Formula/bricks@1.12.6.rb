# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class BricksAT1126 < Formula
  desc "Bricks CLI - Infrastructure Control Plane and Orchestration"
  homepage "https://bluebricks.co"
  version "1.12.6"
  license ":cannot_represent"

  on_macos do
    url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.12.6/bricks_1.12.6_darwin_all.tar.gz"
    sha256 "7e143542d762b3d4e200ec61185775f8ff48bed7eaae75388dade2ef60f1cfc2"

    def install
      bin.install "bricks"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.12.6/bricks_1.12.6_linux_amd64.tar.gz"
        sha256 "94607abfdda18a20e4245ffd38d31cb788a9d31e770350ccf100d4abae4d6ea7"

        def install
          bin.install "bricks"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.12.6/bricks_1.12.6_linux_arm64.tar.gz"
        sha256 "9a31977d89ad02bf43da103e02f3254d8391194f60c3a93d489f1a7d37fa23d7"

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
