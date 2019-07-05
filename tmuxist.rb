require "formula"

class Tmuxist < Formula
  homepage 'https://github.com/corrupt952/tmuxist'
  head 'https://github.com/corrupt952/tmuxist.git'
  version '0.0.5'
  url "https://github.com/corrupt952/tmuxist/releases/download/0.0.5/tmuxist_0.0.5_darwin_amd64.tar.gz"
  sha256 "597604c467375508ea04ccb0f7ac51a385f4299d"

  def install
    bin.install "tmuxist"
  end
end
