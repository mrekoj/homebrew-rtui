class Rtui < Formula
  desc "Minimal TUI dashboard to monitor and manage multiple git repos"
  homepage "https://github.com/mrekoj/rtui"
  version "0.1.3"

  if Hardware::CPU.arm?
    url "https://github.com/mrekoj/rtui/releases/download/v0.1.3/rtui_darwin_arm64.tar.gz"
    sha256 "6a3e59c8b32700a7e38c35e09b1bc12361e3441091d76937185348dd21bd310c"
  else
    url "https://github.com/mrekoj/rtui/releases/download/v0.1.3/rtui_darwin_amd64.tar.gz"
    sha256 "81580e5711cb5290d64168131ee0e68e5374778ffb94cd3a03e54e5c05e4672e"
  end

  def install
    bin.install "rtui-darwin-#{Hardware::CPU.arm? ? "arm64" : "amd64"}" => "rtui"
  end

  test do
    system "#{bin}/rtui", "-h"
  end
end
