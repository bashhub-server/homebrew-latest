class Bashhub-server < Formula
  desc "privately hosted open source server for bashhub-client https://github.com/rcaloras/bashhub-client"
  homepage ""
  version "0.1.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/nicksherron/bashhub-server/releases/download/v0.1.0/bashhub-server_v0.1.0_darwin_amd64.tar.gz"
    sha256 "c81cb924f330f53351c7864be16ff77c7ade2a26491f80ae3f51cffcae304721"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/nicksherron/bashhub-server/releases/download/v0.1.0/bashhub-server_v0.1.0_linux_amd64.tar.gz"
      sha256 "08ac1a7b3f20a9e93b3ff013872cb1fc7977fb8de84a0459177f87aee284a757"
    end
  end

  def install
    bin.install "bashhub-server"
  end

  test do
    system "#{bin}/bashhub-server version"
  end
end
