require "formula"

class Tmuxist < Formula
  homepage 'https://github.com/corrupt952/tmuxist'
  head 'https://github.com/corrupt952/tmuxist.git'
  version '0.0.7'

  if `uname -s` == 'Darwin'
    url "https://github.com/corrupt952/tmuxist/releases/download/0.0.7/tmuxist_0.0.7_darwin_amd64.tar.gz"
    sha256 "4714bc8df1457742117523dd4fc97dab7a179703cc7fee0393216805231ccd90"
  else
    url "https://github.com/corrupt952/tmuxist/releases/download/0.0.7/tmuxist_0.0.7_linux_amd64.tar.gz"
    sha256 "a56ac52f74944b17ff741c7a99295933fb7ff84d51315cdc2aef0cfb18b5a50f"
  end

  def install
    bin.install "tmuxist"
  end
end
