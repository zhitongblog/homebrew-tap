class Ziplark < Formula
  desc "Free, fast, cross-platform archiver (ZIP/RAR/7z/tar) — CLI + MCP server"
  homepage "https://ziplark.com/"
  version "0.1.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/zhitongblog/ziplark/releases/download/v0.1.0/ziplark-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "900a0961dac454582c049ab9605cf813f0c9d9e950872c5a4154a6205064bf23"
    end
    on_intel do
      url "https://github.com/zhitongblog/ziplark/releases/download/v0.1.0/ziplark-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "66919b3f15299fc5fcaff5d770f3674be5f8b4ace95753ce371f9af97104e34b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zhitongblog/ziplark/releases/download/v0.1.0/ziplark-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "17e21fb5496faa7b2f3befd932f619879aed2c44b6b043850eee37985daa2268"
    end
  end

  def install
    bin.install "ziplark", "ziplark-mcp"
  end

  test do
    assert_match "ziplark #{version}", shell_output("#{bin}/ziplark --version")
  end
end
