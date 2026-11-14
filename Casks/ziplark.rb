cask "ziplark" do
  version "0.6.0"
  sha256 "b54ef83d43ad0aabd13fbad65a51991c61d2749e9cc46c824b465675698dc4c6"

  url "https://github.com/zhitongblog/ziplark/releases/download/v#{version}/Ziplark-v#{version}-macos-universal.dmg"
  name "Ziplark"
  desc "Free, fast, cross-platform archiver (ZIP, RAR, 7z, tar, zstd, lz4, ISO, PKG)"
  homepage "https://ziplark.com"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Ziplark.app"

  zap trash: [
    "~/Library/Application Support/app.ziplark.desktop",
    "~/Library/Caches/app.ziplark.desktop",
    "~/Library/Preferences/app.ziplark.desktop.plist",
  ]
end
