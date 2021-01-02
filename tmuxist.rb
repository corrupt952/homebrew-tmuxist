require "formula"

class Tmuxist < Formula
  homepage 'https://github.com/corrupt952/tmuxist'
  head 'https://github.com/corrupt952/tmuxist.git'
  version '0.0.7'

  if `uname -s` == 'Darwin'
    url "https://github.com/corrupt952/tmuxist/releases/download/0.0.7/tmuxist_0.0.7_darwin_amd64.tar.gz"
    sha256 "6a8891c0982113127b84cf46ea3755eaebaa2b40763c8f86352636f26a5a6984"
  else
    url "https://github.com/corrupt952/tmuxist/releases/download/0.0.7/tmuxist_0.0.7_linux_amd64.tar.gz"
    sha256 "bdba7ec05f15f963de200bdd97b71ebb7620c7171cc283f6be1f7236b46717ff"
  end

  def install
    bin.install "tmuxist"
  end
end
