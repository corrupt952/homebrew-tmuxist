require "formula"

class Tmuxist < Formula
  homepage 'https://github.com/corrupt952/tmuxist'
  head 'https://github.com/corrupt952/tmuxist.git'
  version '1.0.0'

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
      sha256 "e2e405bb48020e215e38d609b671ea65452d0569169ea5f02dc92cbb52cbd96e"
    else
      sha256 "73a5c901828ba885aea04f3127efa5877949bc47b0a587280c6ea79a24d1131a"
    end
  else
    if arch == "arm64"
      sha256 "d14c53f0a04d7173d6636839c3a07340ecb35011f837a9a34010f3bfeb01b65e"
    else
      sha256 "20ab188e0524962db19dc9a250f154db6a68d2cecbcc36f8a6c60482ba6f1677"
    end
  end

  def install
    bin.install "tmuxist"
  end
end
