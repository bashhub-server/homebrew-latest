class BashhubServer < Formula
  desc "privately hosted open source server for bashhub-client https://github.com/rcaloras/bashhub-client"
  homepage ""
  version "0.1.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/nicksherron/bashhub-server/releases/download/v0.1.1/bashhub-server_v0.1.1_darwin_amd64.tar.gz"
    sha256 "12d13f64e09f947320be79cf2b1f4956abf78da5f270fd871046838865818532"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/nicksherron/bashhub-server/releases/download/v0.1.1/bashhub-server_v0.1.1_linux_amd64.tar.gz"
      sha256 "b6d0bc1fc1649c15bcb27b90c1e1bfec1096dc2dae44a817db30077153d979f2"
    end
  end

  def install
    bin.install "bashhub-server"
  end

  test do
    system "#{bin}/bashhub-server version"
  end
end
