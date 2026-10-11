class Baton < Formula
  desc "One terminal for all your coding agents, working as a team"
  homepage "https://github.com/k6w/baton"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/k6w/baton/releases/download/v0.3.3/baton-darwin-arm64.tar.gz"
      sha256 "731171d8f635d0665d5fe6667d633b35c36428c99c9b3934372b22bbd14a917a"
    end
    on_intel do
      url "https://github.com/k6w/baton/releases/download/v0.3.3/baton-darwin-x64.tar.gz"
      sha256 "7753ca9cccfe96577c9943cce001be83c189089a0e12207e4c9d0eb540244165"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/k6w/baton/releases/download/v0.3.3/baton-linux-arm64.tar.gz"
      sha256 "de33b08fbff7588407032a576f9b1f4e685e29bb3399104a973e25b4d9e0ca74"
    end
    on_intel do
      url "https://github.com/k6w/baton/releases/download/v0.3.3/baton-linux-x64.tar.gz"
      sha256 "04394db6d8ff231b3966543a420b6a4c9d4adf4207deb60851c7a8c53ce2d8bf"
    end
  end

  def install
    bin.install "baton"
  end

  def caveats
    <<~EOS
      Baton runs the coding agents you already have (Claude Code, Codex, OpenCode, …).
      Check what it found with: baton doctor
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/baton --version")
  end
end
