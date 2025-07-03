require "formula"

class Tmuxist < Formula
  homepage 'https://github.com/corrupt952/tmuxist'
  head 'https://github.com/corrupt952/tmuxist.git'
  version '1.2.3'

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
      sha256 "93453824bf038bc224405c8dda9b695d7a0c6486ac6b8104f8d19761f786612f"
    else
      sha256 "560150e0edb4db84f11871f3cc21a9c97142420c3291c638c3ee136b2348528d"
    end
  else
    if arch == "arm64"
      sha256 "3c21e23473fd641476cde7c762852a002965b8d0190e5b51405be66a7dfd0f38"
    else
      sha256 "9dbd8e5989be352a5f5190569083d90caf8850d9207b665870d13099d046ecd8"
    end
  end

  def install
    bin.install "tmuxist"
  end
end
