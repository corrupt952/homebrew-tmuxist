require "formula"

class Tmuxist < Formula
  homepage 'https://github.com/corrupt952/tmuxist'
  url "https://github.com/corrupt952/tmuxist/releases/download/0.0.2/tmuxist_0.0.2_darwin_amd64.tar.gz"
  sha256 "97bfe5a9a0f2e5fd50452596614383bd8cf5b3b2e9747501a8d3983e91e7b94e"
  head 'https://github.com/corrupt952/tmuxist.git'
  version '0.0.2'

  def install
    bin.install "tmuxist"
  end
end
