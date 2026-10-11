class Baton < Formula
  desc "One terminal for all your coding agents, working as a team"
  homepage "https://github.com/k6w/baton"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/k6w/baton/releases/download/v0.2.0/baton-darwin-arm64.tar.gz"
      sha256 "2dfb4cc13a1e6b7609d69fa8c29bd4f86d6de09bfb4c541705ecb35b10c56191"
    end
    on_intel do
      url "https://github.com/k6w/baton/releases/download/v0.2.0/baton-darwin-x64.tar.gz"
      sha256 "354d9b541dea93efd9b95289980c105d9bbf91e1a6f8a593848f5f5293cb3626"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/k6w/baton/releases/download/v0.2.0/baton-linux-arm64.tar.gz"
      sha256 "cd6d478bffb822b87ee8bd8281787431fe471de0cd52cb175e1d600429edd796"
    end
    on_intel do
      url "https://github.com/k6w/baton/releases/download/v0.2.0/baton-linux-x64.tar.gz"
      sha256 "f0aa4079f5c5052071598a26b3a5f1ddace251af961b7549797501b09430af78"
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
