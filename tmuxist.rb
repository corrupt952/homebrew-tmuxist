require "formula"

class Tmuxist < Formula
  homepage 'https://github.com/corrupt952/tmuxist'
  head 'https://github.com/corrupt952/tmuxist.git'
  version '0.1.0'

  os = `uname -s`.chomp.downcase
  arch = case `uname -m`.chomp.downcase
  when 'aarch64', 'arm64'
    "arm64"
  else
    "amd64"
  end

  url "https://github.com/corrupt952/tmuxist/releases/download/#{version}/tmuxist_#{version}_#{os}_#{arch}.tar.gz"

  if os == 'darwin'
    if arch == "arm64"
      sha256 "1e4fdd9eec328fa2f701be1abbd2ce2ad7c840dda179c21fc10873f726dc3040"
    else
      sha256 "182d400ae38907197c2b523c3d3665553fc3582c20853e5c37d43d5e6feb195a"
    end
  else
    if arch == "arm64"
      sha256 "b01eef2b78260e81ddfc85df42aae01e4856d0ecca9845f72efdb775425985c8"
    else
      sha256 "20ab188e0524962db19dc9a250f154db6a68d2cecbcc36f8a6c60482ba6f1677"
    end
  end

  def install
    bin.install "tmuxist"
  end
end
