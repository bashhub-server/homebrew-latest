class BashhubServer < Formula
  desc "privately hosted open source server for bashhub-client https://github.com/rcaloras/bashhub-client"
  homepage ""
  version "0.2.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/nicksherron/bashhub-server/releases/download/v0.2.1/bashhub-server_v0.2.1_darwin_amd64.tar.gz"
    sha256 "29b7017b0ef4ba819624ec0d20167ea5ee120675e9c1a5beb4c00ea3b25efc0c"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/nicksherron/bashhub-server/releases/download/v0.2.1/bashhub-server_v0.2.1_linux_amd64.tar.gz"
      sha256 "0089ba2a59826c8733e8ed41b2e271abb34fe1015c86023869dcf8744feca389"
    end
  end

  def install
    bin.install "bashhub-server"
  end

  test do
    system "#{bin}/bashhub-server version"
  end
end
