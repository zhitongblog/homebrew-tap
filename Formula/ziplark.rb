class Ziplark < Formula
  desc "Free, fast, cross-platform archiver (ZIP/RAR/7z/tar) — CLI + MCP server"
  homepage "https://ziplark.com/"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zhitongblog/ziplark/releases/download/v0.2.0/ziplark-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "6ec46deded6dfca430cf78a45906244f35547207a9595fbe6468f109a9aead99"
    end
    on_intel do
      url "https://github.com/zhitongblog/ziplark/releases/download/v0.2.0/ziplark-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "b0cf26aafd721a7aaceea910460451b1b7aa009087de627e933c79ef84a9bbf9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zhitongblog/ziplark/releases/download/v0.2.0/ziplark-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8bd01d909ddf361f6e5ae2a3aa0cbb0a5232652d5184739561ea55a820167f53"
    end
  end

  def install
    bin.install "ziplark", "ziplark-mcp"
  end

  test do
    assert_match "ziplark #{version}", shell_output("#{bin}/ziplark --version")
  end
end
