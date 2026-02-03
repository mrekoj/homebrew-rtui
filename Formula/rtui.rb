class Rtui < Formula
  desc "Minimal TUI dashboard to monitor and manage multiple git repos"
  homepage "https://github.com/mrekoj/rtui"
  version "0.1.2"

  if Hardware::CPU.arm?
    url "https://github.com/mrekoj/rtui/releases/download/v0.1.2/rtui_darwin_arm64.tar.gz"
    sha256 "fe072a964210b3f28f9e1fa99c25e56f533ee0f809b374f471ad1e529db24cd0"
  else
    url "https://github.com/mrekoj/rtui/releases/download/v0.1.2/rtui_darwin_amd64.tar.gz"
    sha256 "985310eef69a3c347dd30ad34604960496b58ad390fdd49b62e8a7d1e7d6244b"
  end

  def install
    bin.install "rtui-darwin-#{Hardware::CPU.arm? ? "arm64" : "amd64"}" => "rtui"
  end

  test do
    system "#{bin}/rtui", "-h"
  end
end
