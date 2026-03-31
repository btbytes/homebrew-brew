cask "bandwidther" do
  version "1.0.14"
  sha256 "187f71c013e43886b1cb5f0b3d087b5a785b53a95a1ecf7019633ed0945c0bdb"

  url "https://github.com/btbytes/bandwidther/releases/download/v1.0.14/Bandwidther-1.0.14.zip"
  name "Bandwidther"
  desc "macOS menu bar app that monitors per-process network bandwidth usage"
  homepage "https://github.com/btbytes/bandwidther"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Bandwidther.app"
end
