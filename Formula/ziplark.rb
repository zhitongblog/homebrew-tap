class Ziplark < Formula
  desc "Free, fast, cross-platform archiver (ZIP/RAR/7z/tar/ISO/DEB/RPM/CAB) — CLI + MCP server"
  homepage "https://ziplark.com/"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zhitongblog/ziplark/releases/download/v0.5.0/ziplark-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "357292c9445d6150e88f7e2991db7d5bbd46a55e112a7dda56e837e8db3280db"
    end
    on_intel do
      url "https://github.com/zhitongblog/ziplark/releases/download/v0.5.0/ziplark-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "35fb983ddd9a9b6b477ca77fcddf93af989be3846415984bdbad6b88d1db1580"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zhitongblog/ziplark/releases/download/v0.5.0/ziplark-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8c4d9971a3463a9f900459a0048770c94e5168d235ad001b9ea0234f7d659727"
    end
  end

  def install
    bin.install "ziplark", "ziplark-mcp"
  end

  test do
    assert_match "ziplark #{version}", shell_output("#{bin}/ziplark --version")
  end
end
