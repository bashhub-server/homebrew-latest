class BashhubServer < Formula
  desc "privately hosted open source server for bashhub-client https://github.com/rcaloras/bashhub-client"
  homepage ""
  version "0.2.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/nicksherron/bashhub-server/releases/download/v0.2.3/bashhub-server_v0.2.3_darwin_amd64.tar.gz"
    sha256 "da8309afc16e35f23f92a4a4fdd66508824e3427f9433cac3548436f6ff29018"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/nicksherron/bashhub-server/releases/download/v0.2.3/bashhub-server_v0.2.3_linux_amd64.tar.gz"
      sha256 "3d3e816811ea6bf31de9fd31b52ebd586ebbad53c44bc61aa81143c79cd692a5"
    end
  end

  def install
    bin.install "bashhub-server"
  end

  test do
    system "#{bin}/bashhub-server version"
  end
end
