class BashhubServer < Formula
  desc "privately hosted open source server for bashhub-client https://github.com/rcaloras/bashhub-client"
  homepage ""
  version "0.1.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/nicksherron/bashhub-server/releases/download/v0.1.1/bashhub-server_v0.1.1_darwin_amd64.tar.gz"
    sha256 "a8079e5d4eb261abafa2e4acc12cea83479e5e55d1730d99bee2fce5dc15bf39"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/nicksherron/bashhub-server/releases/download/v0.1.1/bashhub-server_v0.1.1_linux_amd64.tar.gz"
      sha256 "ecba7dfcecea435c6ceb90a811f8f386bbcfa5ef08d854241e6032a788917b4c"
    end
  end

  def install
    bin.install "bashhub-server"
  end

  test do
    system "#{bin}/bashhub-server version"
  end
end
