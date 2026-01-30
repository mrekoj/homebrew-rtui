class Rtui < Formula
  desc "Minimal TUI dashboard to monitor and manage multiple git repos"
  homepage "https://github.com/mrekoj/rtui"
  version "0.1.0"

  if Hardware::CPU.arm?
    url "https://github.com/mrekoj/rtui/releases/download/v0.1.0/rtui_darwin_arm64.tar.gz"
    sha256 "91cf269818a613066403daad3ce1429ffe97317ccf3144068b89a112727dd2ca"
  else
    url "https://github.com/mrekoj/rtui/releases/download/v0.1.0/rtui_darwin_amd64.tar.gz"
    sha256 "ea0054e961c57f8b81c90a6307c6671487ba8317ef51d1a2549cfb41c5678185"
  end

  def install
    bin.install "rtui-darwin-#{Hardware::CPU.arm? ? "arm64" : "amd64"}" => "rtui"
  end

  test do
    system "#{bin}/rtui", "-h"
  end
end
