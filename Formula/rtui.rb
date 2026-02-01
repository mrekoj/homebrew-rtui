class Rtui < Formula
  desc "Minimal TUI dashboard to monitor and manage multiple git repos"
  homepage "https://github.com/mrekoj/rtui"
  version "0.1.1"

  if Hardware::CPU.arm?
    url "https://github.com/mrekoj/rtui/releases/download/v0.1.1/rtui_darwin_arm64.tar.gz"
    sha256 "526a52addcbbabbe0f9168bad8b9039034fc763649dbb4f052ecef0ea9aedb5e"
  else
    url "https://github.com/mrekoj/rtui/releases/download/v0.1.1/rtui_darwin_amd64.tar.gz"
    sha256 "1cb31d4787a36748b766a325047b428d146f22442d62259f6ab3e161aea1e1fb"
  end

  def install
    bin.install "rtui-darwin-#{Hardware::CPU.arm? ? "arm64" : "amd64"}" => "rtui"
  end

  test do
    system "#{bin}/rtui", "-h"
  end
end
