# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class BricksAT1231 < Formula
  desc "Bricks CLI - Infrastructure Control Plane and Orchestration"
  homepage "https://bluebricks.co"
  version "1.23.1"
  license ":cannot_represent"

  on_macos do
    url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.23.1/bricks_1.23.1_darwin_all.tar.gz"
    sha256 "d109359c830888a3bcdef15cf66a9db21b1f4b6224c3f105c1674161a5f44a9d"

    def install
      bin.install "bricks"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.23.1/bricks_1.23.1_linux_amd64.tar.gz"
        sha256 "8316decea113c11c42b815e0d1ea702797d279124d8964674a4d6f5dd24b71cc"

        def install
          bin.install "bricks"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://brickscli.s3.eu-west-1.amazonaws.com/releases/1.23.1/bricks_1.23.1_linux_arm64.tar.gz"
        sha256 "efbf358769fba6f3887f463c72af00dc0b428b5a262d9761100897f1ea2e8e7e"

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