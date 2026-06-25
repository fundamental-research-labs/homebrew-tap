class Sfae < Formula
  desc "Credential gateway for agents making authenticated API requests"
  homepage "https://sfae.io"
  version "0.0.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fundamental-research-labs/sfae/releases/download/v0.0.5/sfae-macos-arm64.tar.gz"
      sha256 "995701e1e6235054df0d03d9f942e078af64fee14fb9e852359d315c52cba86a"
    end

    on_intel do
      url "https://github.com/fundamental-research-labs/sfae/releases/download/v0.0.5/sfae-macos-x86_64.tar.gz"
      sha256 "19f2ffb8875ad618553749221a94d1cffabca056039e0b1d1507931238e77f36"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fundamental-research-labs/sfae/releases/download/v0.0.5/sfae-linux-arm64.tar.gz"
      sha256 "3e6366c2591c309bfed99957491a9355c586dc160dd7d5efca19f6712d596da5"
    end

    on_intel do
      url "https://github.com/fundamental-research-labs/sfae/releases/download/v0.0.5/sfae-linux-x86_64.tar.gz"
      sha256 "fe05b0de2c85b6fc9bf3f25eda3685bfa54dc99128c6d79c26c02b9ebc58de90"
    end
  end

  def install
    bin.install "sfae"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sfae --version")
  end
end
