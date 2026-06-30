cask "ziplark" do
  version "0.2.0"
  sha256 "360125ba8ef7537d2fae649e7dcb73991698463cde0e385ae5c5856d22b53584"

  url "https://github.com/zhitongblog/ziplark/releases/download/v#{version}/Ziplark-v#{version}-macos-universal.dmg",
      verified: "github.com/zhitongblog/ziplark/"
  name "Ziplark"
  desc "Free, fast, cross-platform archiver (ZIP/RAR/7z/tar)"
  homepage "https://ziplark.com/"

  app "Ziplark.app"

  zap trash: [
    "~/Library/Application Support/app.ziplark.desktop",
    "~/Library/Caches/app.ziplark.desktop",
    "~/Library/Preferences/app.ziplark.desktop.plist",
    "~/Library/Saved Application State/app.ziplark.desktop.savedState",
    "~/Library/WebKit/app.ziplark.desktop",
  ]
end
