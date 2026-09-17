class Ziplark < Formula
  desc "Free, fast, cross-platform archiver (ZIP/RAR/7z/tar) — CLI + MCP server"
  homepage "https://ziplark.com/"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zhitongblog/ziplark/releases/download/v0.3.0/ziplark-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "c42e31bc29585b98fb7a457cf1a011a361fc5b86fac02fe0f25d54c4a3708108"
    end
    on_intel do
      url "https://github.com/zhitongblog/ziplark/releases/download/v0.3.0/ziplark-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "b4bf45db076db2e2015fc54a85cbef1195c83e214fcbd843c38b7820136dc550"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zhitongblog/ziplark/releases/download/v0.3.0/ziplark-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1e9c72ccfc0923fde4958106d02040628d8cf36f27898c28629524fb3a85f50e"
    end
  end

  def install
    bin.install "ziplark", "ziplark-mcp"
  end

  test do
    assert_match "ziplark #{version}", shell_output("#{bin}/ziplark --version")
  end
end
