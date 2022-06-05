class Bore < Formula
  desc "A simple CLI tool for making tunnels to localhost."
  homepage "https://github.com/ekzhang/bore"
  version "0.4.0"

  on_macos do
    if `uname -m`.strip == "arm64"
      url "https://github.com/ekzhang/bore/releases/download/v#{version}/bore-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "703e2d2c0fa3fb1e6b7f1a5249533072d9d9caeaf7811dbe1750ee43c1ef0501"
    else
      url "https://github.com/ekzhang/bore/releases/download/v#{version}/bore-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "33de7cf074cc9aa8850b99ef61fb64e490cdf04f0231d76988b207b3d09cbdae"
    end
  end

  on_linux do
    url "https://github.com/ekzhang/bore/releases/download/v#{version}/bore-#{version}-x86_64-unknown-linux-musl.tar.gz"
    sha256 "ba68f7b9e8eb49325a28ed27d1ff542919952145af371b144cc7effdd0d561d9"
  end

  def install
    bin.install "bore"
  end
end
