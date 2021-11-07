require "formula"

class Tmuxist < Formula
  homepage 'https://github.com/corrupt952/tmuxist'
  head 'https://github.com/corrupt952/tmuxist.git'
  version '0.0.12'

  os = `uname -s`.chomp.downcase
  arch = case `uname -m`.chomp.downcase
  when 'aarch64', 'arm64'
    "arm64"
  else
    "amd64"
  end

  url "https://github.com/corrupt952/tmuxist/releases/download/#{version}/tmuxist_#{version}_#{os}_#{arch}.tar.gz"

  if `uname -s` == 'darwin'
    if arch == "arm64"
      sha256 "84985d63aef7a755d03eee4b939ecf44f5090ca69c298e06e84315357960c3a5"
    else
      sha256 "bdaa3a81cd9224c52bb4fa60dc2e104ff651ecf05aa55d5920920f3ddbadfd7d"
    end
  else
    if arch == "arm64"
      sha256 "87cdeb893bf51455c64e334958e8d404262e6c558972d18c07f8d773e3b0771c"
    else
      sha256 "7e64f356cb46970e270b34f43543499b520e5f20fee0830611c51d21dfdca082"
    end
  end

  def install
    bin.install "tmuxist"
  end
end
