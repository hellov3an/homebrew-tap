cask "onekomac" do
  version "3.3.0"
  sha256 "0bdd49006ec38867cbeca96b154641364d51da701d3a106e8d124e47806111da"

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
