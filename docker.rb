require 'formula'

class Docker < Formula
  homepage 'https://www.docker.io/'

  if MacOS.prefer_64_bit?
    url 'https://get.docker.io/builds/Darwin/x86_64/docker-0.7.6.tgz'
    sha1 '2f2e6815a8404623f3e31a8b146f9976b15d4117'
  else
    url 'https://get.docker.io/builds/Darwin/i386/docker-0.7.6.tgz'
    sha1 'cf83bc667430f5e9e4c3241c73898348125b3b5a'
  end

  depends_on :arch => :intel

  def install
    bin.install 'local/bin/docker'
  end

  test do
    system "#{bin}/docker"
  end
end
