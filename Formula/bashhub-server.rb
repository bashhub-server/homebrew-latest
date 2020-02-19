class BashhubServer < Formula
  desc "privately hosted open source server for bashhub-client https://github.com/rcaloras/bashhub-client"
  homepage ""
  version "0.2.4"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/nicksherron/bashhub-server/releases/download/v0.2.4/bashhub-server_v0.2.4_darwin_amd64.tar.gz"
    sha256 "2c5d3b5790dadf3cb9d6b750fb66b6d11572b7a457ed1faf6b02c19c61149670"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/nicksherron/bashhub-server/releases/download/v0.2.4/bashhub-server_v0.2.4_linux_amd64.tar.gz"
      sha256 "2e0ff6aa91cc82ba6e0f37db4efad42b1e9cf0b11f51380c246a99f8a32390b4"
    end
  end

  def install
    bin.install "bashhub-server"
  end

  test do
    system "#{bin}/bashhub-server version"
  end
end
