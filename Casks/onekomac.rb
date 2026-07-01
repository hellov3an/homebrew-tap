cask "onekomac" do
  version "3.4.0"
  sha256 "32435a0d80e56c89a1f74e6f25b7595f1c41519bec50d04fe6dee64baf6193d5"

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
