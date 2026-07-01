cask "onekomac" do
  version "3.2.0"
  sha256 "0010adf2a21d0b6fff87eee1e9d71ff55334a37eda11200b9f1b142a49f8e2b5"

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
