class Sfae < Formula
  desc "Credential gateway for agents making authenticated API requests"
  homepage "https://sfae.io"
  version "0.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fundamental-research-labs/sfae/releases/download/v0.0.4/sfae-macos-arm64.tar.gz"
      sha256 "244d3953d1e8ac8d243a8ed7dc8926ed3b27e01a42e947d881f1c96428682a97"
    end

    on_intel do
      url "https://github.com/fundamental-research-labs/sfae/releases/download/v0.0.4/sfae-macos-x86_64.tar.gz"
      sha256 "ddccbf2febb90b911ab21a36e2f8c8ec178ccf4b5224d425a6958fee80b4d598"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fundamental-research-labs/sfae/releases/download/v0.0.4/sfae-linux-arm64.tar.gz"
      sha256 "48acb508b1c7ef03b1948f91105b40c3b1e278d746b75b3eaf2c541d530a5f63"
    end

    on_intel do
      url "https://github.com/fundamental-research-labs/sfae/releases/download/v0.0.4/sfae-linux-x86_64.tar.gz"
      sha256 "f9c1dfcdaba824e3db7bc52bd410c90871a241438b0e00e3e63a34368783ffc2"
    end
  end

  def install
    bin.install "sfae"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sfae --version")
  end
end
