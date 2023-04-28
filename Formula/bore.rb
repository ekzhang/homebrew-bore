class Bore < Formula
  desc "A simple CLI tool for making tunnels to localhost."
  homepage "https://github.com/ekzhang/bore"
  version "0.5.0"

  on_macos do
    if `uname -m`.strip == "arm64"
      url "https://github.com/ekzhang/bore/releases/download/v#{version}/bore-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "bea23804b59ef8bc8cbd4e03054e2b89baccf01b2640013e3b1b7db85c5f6b2e"
    else
      url "https://github.com/ekzhang/bore/releases/download/v#{version}/bore-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "ad5c1453508585d413c083df1571738ae1158b7a83aeab24c456548fb0e4cdbd"
    end
  end

  on_linux do
    url "https://github.com/ekzhang/bore/releases/download/v#{version}/bore-#{version}-x86_64-unknown-linux-musl.tar.gz"
    sha256 "f606f2a59706479d9cab36d16b9c241e204edb46540c92333521872dfcda025f"
  end

  def install
    bin.install "bore"
  end
end
