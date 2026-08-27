class Ziplark < Formula
  desc "Free, fast, cross-platform archiver (ZIP/RAR/7z/tar) — CLI + MCP server"
  homepage "https://ziplark.com/"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zhitongblog/ziplark/releases/download/v0.2.2/ziplark-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "4d0dcf41e37509871d5488bb4740fe52b56b6afaa732bcd6aac0e2a40b745644"
    end
    on_intel do
      url "https://github.com/zhitongblog/ziplark/releases/download/v0.2.2/ziplark-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "e79473b666a613820bf23d017ce4268e2e4ea5618bead60340e96f96493a7ae8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zhitongblog/ziplark/releases/download/v0.2.2/ziplark-v0.2.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a951307191398ed6e6cbdf017fdf11051520dc81d82efc3731f55bf5803fa33d"
    end
  end

  def install
    bin.install "ziplark", "ziplark-mcp"
  end

  test do
    assert_match "ziplark #{version}", shell_output("#{bin}/ziplark --version")
  end
end
