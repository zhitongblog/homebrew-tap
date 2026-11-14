class Ziplark < Formula
  desc "Free, fast, cross-platform archive tool and MCP server (CLI + MCP)"
  homepage "https://ziplark.com"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhitongblog/ziplark/releases/download/v#{version}/ziplark-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "da7741ca0aa4cc8545159a598264690666a237af02e06dcb051ccd4f7470a523"
    else
      url "https://github.com/zhitongblog/ziplark/releases/download/v#{version}/ziplark-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "b8ca3c0c9837b8b26a1e5c3fbefb5c7a9db13c435e8c88be8f42919df790a99d"
    end
  end

  on_linux do
    url "https://github.com/zhitongblog/ziplark/releases/download/v#{version}/ziplark-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d191dd9cad55ee8784dda814d1a1e2418530ae024b8efbc1ba530f388fb620e7"
  end

  def install
    bin.install "ziplark"
    bin.install "ziplark-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ziplark --version")
  end
end
