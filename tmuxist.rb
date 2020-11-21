require "formula"

class Tmuxist < Formula
  homepage 'https://github.com/corrupt952/tmuxist'
  head 'https://github.com/corrupt952/tmuxist.git'
  version '0.0.6'

  if `uname -s` == 'Darwin'
    url "https://github.com/corrupt952/tmuxist/releases/download/0.0.6/tmuxist_0.0.6_darwin_amd64.tar.gz"
    sha256 "a4dabcae72c7da19365b1963bb0e3d3d8c2ed73aa7c64c7123c59aa570d03b7d"
  else
    url "https://github.com/corrupt952/tmuxist/releases/download/0.0.6/tmuxist_0.0.6_linux_amd64.tar.gz"
    sha256 "dc4cd6905f0e6931cf1e1dc1078a6468f8561cb0f700df96a9be541f61d80b5e"
  end

  def install
    bin.install "tmuxist"
  end
end
