# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MarkdownIndex < Formula
  desc "Tool to generate a global Markdown Summary Index based on other markdown files"
  homepage "https://github.com/mmiranda/markdown-index"
  version "0.1.2-beta"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mmiranda/markdown-index/releases/download/v0.1.2-beta/markdown-index_0.1.2-beta_Darwin_x86_64.tar.gz"
      sha256 "ed063efdac7e8576b768abff8d14559debd05c373a67b4c9a12ef7641b575bdc"

      def install
        bin.install "markdown-index"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/mmiranda/markdown-index/releases/download/v0.1.2-beta/markdown-index_0.1.2-beta_Darwin_arm64.tar.gz"
      sha256 "f53d3b1c4d834f0250f5abc19446266e97a5fead56696c342801f84868e5dc3e"

      def install
        bin.install "markdown-index"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mmiranda/markdown-index/releases/download/v0.1.2-beta/markdown-index_0.1.2-beta_Linux_arm64.tar.gz"
      sha256 "a6588de1fdc26b05b16c3e32e44cf4b691a16dbe492e4878d89fc9e9f89ab178"

      def install
        bin.install "markdown-index"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mmiranda/markdown-index/releases/download/v0.1.2-beta/markdown-index_0.1.2-beta_Linux_x86_64.tar.gz"
      sha256 "101ec8d347fe75b27d954e24a0e353a3139bccfb2f758d5282f3865e94582b4d"

      def install
        bin.install "markdown-index"
      end
    end
  end

  test do
    system "#{bin}/program", "version"
  end
end
