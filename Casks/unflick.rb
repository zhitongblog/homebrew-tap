cask "unflick" do
  version "0.14.1"
  sha256 "458385e66511f1233659f8e9c151f78638b54c5c038498ffc6233bf77bef3327"

  url "https://github.com/zhitongblog/unflick/releases/download/v#{version}/unflick_#{version}_universal.dmg"
  name "unflick"
  desc "Video player for humans and AI, with a CLI and an MCP server"
  homepage "https://unflick.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Thumbnails, clip extraction, cover art and whisper's input all shell out
  # to ffmpeg. Everything else works without it; those four do not.
  depends_on formula: "ffmpeg"
  # The download is 16 MB because it carries no player: libmpv is loaded at
  # runtime, from the system. Without mpv the window opens and nothing plays.
  depends_on formula: "mpv"
  depends_on macos: :big_sur

  app "unflick.app"
  # The CLI and the MCP server are the same binary inside the bundle, and they
  # are half of what this app is: `unflick play`, `unflick status`, and
  # `unflick --mcp`, which is what an AI agent connects to.
  binary "#{appdir}/unflick.app/Contents/MacOS/unflick"

  zap trash: [
    # settings.json, library.db, and yt-dlp if unflick fetched its own.
    "~/Library/Application Support/unflick",
    "~/Library/Caches/com.unflick.app",
    # Thumbnail, cover-art and subtitle caches.
    "~/Library/Caches/unflick",
    "~/Library/Preferences/com.unflick.app.plist",
    "~/Library/Saved Application State/com.unflick.app.savedState",
    "~/Library/WebKit/com.unflick.app",
  ]

  caveats <<~EOS
    Playing from YouTube and other streaming sites needs yt-dlp. unflick
    downloads its own copy on first use, or you can install it yourself:

      brew install yt-dlp

    Point an MCP client at the player with:

      #{appdir}/unflick.app/Contents/MacOS/unflick --mcp
  EOS
end
