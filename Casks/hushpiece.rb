cask "hushpiece" do
  version "1.1.0"
  sha256 "4e97ca811d99596391d4496fe8522e99a19f8d0f5731554c60204cc6e6d159d9"

  url "https://github.com/zhitongblog/hushpiece/releases/download/v#{version}/Hushpiece-#{version}.dmg"
  name "Hushpiece"
  name "耳语同传"
  desc "On-device two-way meeting interpreter with live bilingual subtitles"
  homepage "https://hushpiece.tobefree.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  # SpeechAnalyzer and the on-device Translation sessions it relies on are
  # macOS 26 APIs; the binary is arm64 only.
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Hushpiece.app"
  # The CLI and the MCP server are the app's own binary: `hushpiece start`,
  # `hushpiece transcript`, `hushpiece mcp`.
  binary "#{appdir}/Hushpiece.app/Contents/MacOS/hushpiece"

  zap trash: [
    # Meeting transcripts (sessions/), status and log.
    "~/Library/Application Support/Hushpiece",
    "~/Library/Preferences/app.hushpiece.Hushpiece.plist",
  ]

  caveats <<~EOS
    To let the other side hear your translated speech, install a virtual
    microphone and pick it as the meeting app's microphone:

      brew install --cask blackhole-2ch

    Without it, Hushpiece shows subtitles and the translated text only.
  EOS
end
