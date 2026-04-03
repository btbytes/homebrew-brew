class Bleat < Formula
  desc "Find what's running on your ports"
  homepage "https://github.com/btbytes/bleat"
  version "1.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/btbytes/bleat/releases/download/v1.0.1/bleat-darwin-arm64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    else
      url "https://github.com/btbytes/bleat/releases/download/v1.0.1/bleat-darwin-amd64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/btbytes/bleat/releases/download/v1.0.1/bleat-linux-arm64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    else
      url "https://github.com/btbytes/bleat/releases/download/v1.0.1/bleat-linux-amd64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  def install
    bin.install "bleat"
  end

  test do
    system "#{bin}/bleat", "--help"
  end
end
