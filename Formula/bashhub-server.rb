class BashhubServer < Formula
  desc "privately hosted open source server for bashhub-client https://github.com/rcaloras/bashhub-client"
  homepage ""
  version "0.1.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/nicksherron/bashhub-server/releases/download/v0.1.1/bashhub-server_v0.1.1_darwin_amd64.tar.gz"
    sha256 "5ce64686654165948658e8dfca76a7a795389c8db3471530418958a4bccadd30"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/nicksherron/bashhub-server/releases/download/v0.1.1/bashhub-server_v0.1.1_linux_amd64.tar.gz"
      sha256 "9976343bf25a66d3e1c8526bffe51362944cd94ee7b254b7294589be3e73f35e"
    end
  end

  def install
    bin.install "bashhub-server"
  end

  test do
    system "#{bin}/bashhub-server version"
  end
end
