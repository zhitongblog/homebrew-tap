cask "ziplark" do
  version "0.1.0"
  sha256 "707ccab771a0b4b0cf11046e63b25d27a467a3bb197fcb493844218c25810f72"

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
