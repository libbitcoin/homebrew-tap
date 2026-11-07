class LibbitcoinServer < Formula
  desc "Bitcoin Full Node and Query Server"
  homepage "https://github.com/libbitcoin/libbitcoin-server"
  version "4.0.3524-preview"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/libbitcoin/libbitcoin-server/releases/download/v4.0.3524-preview/bs-macos-arm64"
      sha256 "283e299ffbfb023570a88738bbd6bba2d609a8f1d0cf23dd128d464dacec796e"
    end
    on_intel do
      url "https://github.com/libbitcoin/libbitcoin-server/releases/download/v4.0.3524-preview/bs-macos-x64"
      sha256 "72ba0a0aa17dca15c442ce46d66b1542fcf2e289be4c170608a0ae63b0f0b615"
    end
  end

  def install
    bin.install Dir["bs-macos-*"].first => "bs"
  end

  test do
    system bin/"bs", "--version"
  end
end
