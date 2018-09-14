require "formula"

class Tmuxist < Formula
  homepage 'https://github.com/corrupt952/tmuxist'
  url "https://github.com/corrupt952/tmuxist/releases/download/0.0.3/tmuxist_0.0.3_darwin_amd64.tar.gz"
  sha256 "7faf3dade64e4ee243d708e49f5e5e7613098fa7240a61981261ae32da43c162"
  head 'https://github.com/corrupt952/tmuxist.git'
  version '0.0.3'

  def install
    bin.install "tmuxist"
  end
end
