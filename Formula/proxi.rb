class Proxi < Formula
  desc "Scrapes, checks and stores bashhub-serveres with a rest api for querying results."
  homepage ""
  version "0.1.7"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/nicksherron/bashhub-server/releases/download/v0.1.7/bashhub-server_v0.1.7_darwin_amd64.tar.gz"
    sha256 "f9526b860833384dbd8860fc7e67a79511aeb5ab366872b03a379b4225a23880"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/nicksherron/bashhub-server/releases/download/v0.1.7/bashhub-server_v0.1.7_linux_amd64.tar.gz"
      sha256 "e1d0fc168af23c58a41d2f324fc2e569e0560b654f6cb2e6ef49bfb46bfd8830"
    end
  end

  def install
    bin.install "bashhub-server"
  end

  test do
    system "#{bin}/bashhub-server version"
  end
end
