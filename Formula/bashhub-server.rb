class BashhubServer < Formula
  desc "privately hosted open source server for bashhub-client https://github.com/rcaloras/bashhub-client"
  homepage ""
  version "0.2.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/nicksherron/bashhub-server/releases/download/v0.2.2/bashhub-server_v0.2.2_darwin_amd64.tar.gz"
    sha256 "e4a6f0b12b1af840329daa050d1eefc4cec3df8ec60e15752a6e3b2109b8e732"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/nicksherron/bashhub-server/releases/download/v0.2.2/bashhub-server_v0.2.2_linux_amd64.tar.gz"
      sha256 "64df7b3668d0ca96090003c2d84f84dce2be52f493afe561e117134a3fc6be15"
    end
  end

  def install
    bin.install "bashhub-server"
  end

  test do
    system "#{bin}/bashhub-server version"
  end
end
