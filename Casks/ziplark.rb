cask "ziplark" do
  version "0.2.1"
  sha256 "0717100188e83ca1e5d03b7c5fa8ff28a6df1a091340d43e66a89ed508f3c458"

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
