class Sfae < Formula
  desc "Credential gateway for agents making authenticated API requests"
  homepage "https://sfae.io"
  version "0.0.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fundamental-research-labs/sfae/releases/download/v0.0.8/sfae-macos-arm64.tar.gz"
      sha256 "6d671a36d208124b128ed8345eb3b8ea219448f372429f2a78a7c57655d93942"
    end

    on_intel do
      url "https://github.com/fundamental-research-labs/sfae/releases/download/v0.0.8/sfae-macos-x86_64.tar.gz"
      sha256 "ff05e67b434f102f12cd81c73b8abe855fab6bbc926621cff6f8b69f985a6d87"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fundamental-research-labs/sfae/releases/download/v0.0.8/sfae-linux-arm64.tar.gz"
      sha256 "165fffe09486bc21f396fc0e039e4022b69813808c8bd73e9756f37381e40b3a"
    end

    on_intel do
      url "https://github.com/fundamental-research-labs/sfae/releases/download/v0.0.8/sfae-linux-x86_64.tar.gz"
      sha256 "fd52a797c46c71aefc0d32697b321f734a941edb31adda6289c6c803106cf82a"
    end
  end

  def install
    bin.install "sfae"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sfae --version")
  end
end
