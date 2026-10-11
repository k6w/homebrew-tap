class Baton < Formula
  desc "One terminal for all your coding agents, working as a team"
  homepage "https://github.com/k6w/baton"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/k6w/baton/releases/download/v0.3.0/baton-darwin-arm64.tar.gz"
      sha256 "37f4546f9fa56b422754c963ff4fa4ab3f2bb605f2bcce49b78351149659d766"
    end
    on_intel do
      url "https://github.com/k6w/baton/releases/download/v0.3.0/baton-darwin-x64.tar.gz"
      sha256 "8c575c42194c13835494ef6a9e36a92090da5262df68fb9b9a7c2c5d57d94a4a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/k6w/baton/releases/download/v0.3.0/baton-linux-arm64.tar.gz"
      sha256 "61d932728e5375e72789352d958ac11354636d5c3f09fb043a13757cd4632646"
    end
    on_intel do
      url "https://github.com/k6w/baton/releases/download/v0.3.0/baton-linux-x64.tar.gz"
      sha256 "07dfe8f130e9980d73362cc41fd88b667fafb4c06767daabcf83a8c53f752fbc"
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
