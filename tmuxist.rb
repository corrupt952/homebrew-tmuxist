require "formula"

class Tmuxist < Formula
  homepage 'https://github.com/corrupt952/tmuxist'
  url "https://github.com/corrupt952/tmuxist/releases/download/0.0.1/tmuxist_0.0.1_darwin_amd64.tar.gz"
  sha256 "4cc0e92554c2024734f92de2e35742903266727bfd88c9febc23d191e30520d6"
  head 'https://github.com/corrupt952/tmuxist.git'
  version '0.0.1'

  def install
    bin.install "tmuxist"
  end
end
