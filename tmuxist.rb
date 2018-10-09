require "formula"

class Tmuxist < Formula
  homepage 'https://github.com/corrupt952/tmuxist'
  head 'https://github.com/corrupt952/tmuxist.git'
  version '0.0.4'
  url "https://github.com/corrupt952/tmuxist/releases/download/0.0.4/tmuxist_0.0.4_darwin_amd64.tar.gz"
  sha256 "26ad51925cb18c99b6fd19cdb9f5f05768023ec1e01380a3c836ce4e13035a03"

  def install
    bin.install "tmuxist"
  end
end
