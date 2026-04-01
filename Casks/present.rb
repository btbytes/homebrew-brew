cask "present" do
  version "1.0.0"
  sha256 "PLACEHOLDER"

  url "https://github.com/btbytes/present/releases/download/v#{version}/Present-#{version}.zip"
  name "Present"
  desc "macOS presentation app for displaying web-based slideshows"
  homepage "https://github.com/btbytes/present"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Present.app"
end
