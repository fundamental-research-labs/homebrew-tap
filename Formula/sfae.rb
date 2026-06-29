class Sfae < Formula
  desc "Credential gateway for agents making authenticated API requests"
  homepage "https://sfae.io"
  version "0.0.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fundamental-research-labs/sfae/releases/download/v0.0.9/sfae-macos-arm64.tar.gz"
      sha256 "402e0d81699f7840cf516982ed058599543f7e8444794925eed0128451a209fe"
    end

    on_intel do
      url "https://github.com/fundamental-research-labs/sfae/releases/download/v0.0.9/sfae-macos-x86_64.tar.gz"
      sha256 "598c1ca5dbea1a9b11b08b950a939db1be05f8431eca3ababf0a1e3d6f4899f6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fundamental-research-labs/sfae/releases/download/v0.0.9/sfae-linux-arm64.tar.gz"
      sha256 "30931aaaad3c6a2e056e22f31619c44545ecc18542d6b0748641eb72024b884b"
    end

    on_intel do
      url "https://github.com/fundamental-research-labs/sfae/releases/download/v0.0.9/sfae-linux-x86_64.tar.gz"
      sha256 "e9c5eade93f1a2d632864bc01c1e473d7719e2ad3011f4e54434e40ec3114337"
    end
  end

  def install
    bin.install "sfae"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sfae --version")
  end
end
