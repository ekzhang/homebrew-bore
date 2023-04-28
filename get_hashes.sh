#!/bin/bash

set -e

PREFIX=https://github.com/ekzhang/bore/releases/download
VERSION=0.5.0

get_hash () {
  echo "Platform: $1"
  curl -L $PREFIX/v$VERSION/bore-v$VERSION-$1.tar.gz 2>/dev/null | shasum -a 256
}

get_hash "aarch64-apple-darwin"
get_hash "x86_64-apple-darwin"
get_hash "x86_64-unknown-linux-musl"
