class Ziplark < Formula
  desc "Free, fast, cross-platform archiver (ZIP/RAR/7z/tar) — CLI + MCP server"
  homepage "https://ziplark.com/"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zhitongblog/ziplark/releases/download/v0.2.1/ziplark-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "a1aaedc7a7d178f3a22e974a71430eafd29de3c719132fda5cc558d0786cb604"
    end
    on_intel do
      url "https://github.com/zhitongblog/ziplark/releases/download/v0.2.1/ziplark-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "a21b68c9587c12e7ad9cc8e8d0d7492a41252f5dec98664934ce06ddd9e1ac06"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zhitongblog/ziplark/releases/download/v0.2.1/ziplark-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6aa831b5e0dfcfba1b9d8a9e43ca96b6f783ab296ce80a10157f00e41c943287"
    end
  end

  def install
    bin.install "ziplark", "ziplark-mcp"
  end

  test do
    assert_match "ziplark #{version}", shell_output("#{bin}/ziplark --version")
  end
end
