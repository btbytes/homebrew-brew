class Bandwidther < Formula
  desc "macOS menu bar app that monitors per-process network bandwidth usage"
  homepage "https://github.com/btbytes/bandwidther"
  url "https://github.com/btbytes/bandwidther/releases/download/v2026.03.31/Bandwidther-2026.03.31.zip"
  version "2026.03.31"
  sha256 "4aa28a7379e8106de56961df6ef6ff4a5f6097941c8bb0fff03b75534eb0d085"
  license :can_use_with_0_warnings

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    bin.install "Bandwidther"
  end

  def caveats
    <<~EOS
      Bandwidther is a macOS menu bar app. After installation, run it with:
        open \#{opt_bin}/Bandwidther

      Or launch via Spotlight by searching for "Bandwidther".
    EOS
  end

  test do
    assert_predicate opt_bin/"Bandwidther", :exist?
  end
end
