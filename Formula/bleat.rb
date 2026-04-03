class Bleat < Formula
  desc "Find what's running on your ports"
  homepage "https://github.com/btbytes/bleat"
  version "1.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/btbytes/bleat/releases/download/v1.0.1/bleat-darwin-arm64.tar.gz"
      sha256 "348307403bece544a3374ce322a97fd489335e39b5d2e9160228a5486472fa21"
    else
      url "https://github.com/btbytes/bleat/releases/download/v1.0.1/bleat-darwin-amd64.tar.gz"
      sha256 "204095c925a4211989dd38e514b971ff2abe681a455b08cff43baca7bf7e35cc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/btbytes/bleat/releases/download/v1.0.1/bleat-linux-arm64.tar.gz"
      sha256 "98adeb5c49d2d561496c3c458153b2b6e0a0de06844e01973c59d0e62383eb54"
    else
      url "https://github.com/btbytes/bleat/releases/download/v1.0.1/bleat-linux-amd64.tar.gz"
      sha256 "49013edc4bc1c044330b68113bee6487e7dc1f2cb24d17822a5dc0dffc34b16b"
    end
  end

  def install
    bin.install "bleat"
  end

  test do
    system "#{bin}/bleat", "--help"
  end
end
