require "formula"

class Tmuxist < Formula
  homepage 'https://github.com/corrupt952/tmuxist'
  head 'https://github.com/corrupt952/tmuxist.git'
  version '0.0.5'

  if `uname -s` == 'Darwin'
    url "https://github.com/corrupt952/tmuxist/releases/download/0.0.5/tmuxist_0.0.5_darwin_amd64.tar.gz"
    sha256 "3ea413d7163fae6fe5c2ef2cc8a8ccd7fbb211061d3ac7490e12d7fc9063f362"
  else
    url "https://github.com/corrupt952/tmuxist/releases/download/0.0.5/tmuxist_0.0.5_linux_amd64.tar.gz"
    sha256 "7640e758da33b54bdc139960d5d4b48217b4164b231aaba2dae6785d6ff952c4"
  end

  def install
    bin.install "tmuxist"
  end
end
