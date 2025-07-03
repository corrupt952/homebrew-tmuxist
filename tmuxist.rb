require "formula"

class Tmuxist < Formula
  homepage 'https://github.com/corrupt952/tmuxist'
  head 'https://github.com/corrupt952/tmuxist.git'
  version '1.1.0'

  os = `uname -s`.chomp.downcase
  arch = case `uname -m`.chomp.downcase
  when 'aarch64', 'arm64'
    "arm64"
  else
    "amd64"
  end

  url "https://github.com/corrupt952/tmuxist/releases/download/#{version}/tmuxist_#{version}_#{os}_#{arch}.tar.gz"

  if os == 'darwin'
    if arch == "arm64"
      sha256 "a8ecb71567c0ec7fdeb06bb03aad176ebd19fa16671f1eba415f6b897f1c30b1"
    else
      sha256 "ad28748f89ef5773cef2295bddb9aa22f591bc1d087deecb10f81434d1bbb4e2"
    end
  else
    if arch == "arm64"
      sha256 "bb73ff79ace8b69d58fd56285daee59fe727c226218ff5f76f5bce63e7f212db"
    else
      sha256 "98296214998296a2e336e254898da6973232332fa72524926d7e182ca4d8ab3e"
    end
  end

  def install
    bin.install "tmuxist"
  end
end
