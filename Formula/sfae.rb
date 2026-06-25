class Sfae < Formula
  desc "Credential gateway for agents making authenticated API requests"
  homepage "https://sfae.io"
  version "0.0.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fundamental-research-labs/sfae/releases/download/v0.0.7/sfae-macos-arm64.tar.gz"
      sha256 "2599ab8d2a21f28e3318107b4b12692ec68bb2082ad1cc8963cfe5740f233cc0"
    end

    on_intel do
      url "https://github.com/fundamental-research-labs/sfae/releases/download/v0.0.7/sfae-macos-x86_64.tar.gz"
      sha256 "8d5f813d8b1882e312755661525b7ba18bdffab65cbfb70c025377460ac165bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fundamental-research-labs/sfae/releases/download/v0.0.7/sfae-linux-arm64.tar.gz"
      sha256 "decc016c40243ba02ddd9ca4d8f6f26af71a5ed046a5298f9cb9d8564df0070d"
    end

    on_intel do
      url "https://github.com/fundamental-research-labs/sfae/releases/download/v0.0.7/sfae-linux-x86_64.tar.gz"
      sha256 "73570b26e6af00e7509f7ee7e12002ebf354dbe0541bf0e60a8e464539797ae3"
    end
  end

  def install
    bin.install "sfae"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sfae --version")
  end
end
