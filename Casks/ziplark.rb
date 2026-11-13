cask "ziplark" do
  version "0.5.0"
  sha256 "264648a5e621f13ec142172e32cb2d359d385ffdc7201c487b0a01dfc19fe04a"

  url "https://github.com/zhitongblog/ziplark/releases/download/v#{version}/Ziplark-v#{version}-macos-universal.dmg",
      verified: "github.com/zhitongblog/ziplark/"
  name "Ziplark"
  desc "Free, fast, cross-platform archiver (ZIP/RAR/7z/tar/ISO/DEB/RPM/CAB)"
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
