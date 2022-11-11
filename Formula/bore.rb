class Bore < Formula
  desc "A simple CLI tool for making tunnels to localhost."
  homepage "https://github.com/ekzhang/bore"
  version "0.4.1"

  on_macos do
    if `uname -m`.strip == "arm64"
      url "https://github.com/ekzhang/bore/releases/download/v#{version}/bore-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "ae37bedf1ad63fabd9843da4dc3598e80bc135b820555842cc20cad4f95164ff"
    else
      url "https://github.com/ekzhang/bore/releases/download/v#{version}/bore-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "02006756198c02904d534aa215a4382f39b9f182e6fed9d7c2bbb36f3e2c06f6"
    end
  end

  on_linux do
    url "https://github.com/ekzhang/bore/releases/download/v#{version}/bore-#{version}-x86_64-unknown-linux-musl.tar.gz"
    sha256 "2b5d0530f54a5cb1aa7e037ab075ba27991bafa83a42555d50fde9245a3eb435"
  end

  def install
    bin.install "bore"
  end
end
