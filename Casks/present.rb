cask "present" do
  version "1.0.8"
  sha256 "e7bd1d2191deeaed027f947138de16123e25b46e2fbde7795f5d92df752b0352"

  url "https://github.com/btbytes/present/releases/download/v1.0.8/Present-1.0.8.zip"
  name "Present"
  desc "macOS presentation app for displaying web-based slideshows"
  homepage "https://github.com/btbytes/present"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Present.app"
end
