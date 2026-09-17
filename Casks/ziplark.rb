cask "ziplark" do
  version "0.3.0"
  sha256 "3282425f3e2376d68c38f1dc3ff9bea59a986a472b972f4e7498fa2c78bf87f4"

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
