class BashhubServer < Formula
  desc "privately hosted open source server for bashhub-client https://github.com/rcaloras/bashhub-client"
  homepage ""
  version "0.2.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/nicksherron/bashhub-server/releases/download/v0.2.0/bashhub-server_v0.2.0_darwin_amd64.tar.gz"
    sha256 "8ed97383ac24fc4fe5b2c0586ba2925d87286ab273501b9ce2bfeafd8159b20d"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/nicksherron/bashhub-server/releases/download/v0.2.0/bashhub-server_v0.2.0_linux_amd64.tar.gz"
      sha256 "bfa94fdc6321dc4ebda9b77acaccc56d67521b7011bd5c8ba43db750dc7fb733"
    end
  end

  def install
    bin.install "bashhub-server"
  end

  test do
    system "#{bin}/bashhub-server version"
  end
end
