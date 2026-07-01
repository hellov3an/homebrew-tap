cask "onekomac" do
  version "3.1.0"
  sha256 "709b5cc4b90ed1019667b1d5d0c7a29afa8d31204eb075873abfa6308bb498d8"

  url "https://github.com/hellov3an/OnekoMac/releases/download/v#{version}/OnekoMac-v#{version}.dmg"
  name "OnekoMac"
  desc "Pixel art cat that lives in your menu bar and chases your cursor"
  homepage "https://hellov3an.github.io/OnekoMac/"

  depends_on macos: :ventura

  app "OnekoMac.app"

  zap trash: [
    "~/Library/Application Support/OnekoMac",
    "~/Library/Preferences/com.onekomac.OnekoMac.plist",
  ]
end
