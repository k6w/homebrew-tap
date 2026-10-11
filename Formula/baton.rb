class Baton < Formula
  desc "One terminal for all your coding agents, working as a team"
  homepage "https://github.com/k6w/baton"
  version "0.3.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/k6w/baton/releases/download/v0.3.5/baton-darwin-arm64.tar.gz"
      sha256 "f3edabaa6ca3c8083c721e7d41bf4c94d92eb5c512f7024eb87205b63475e866"
    end
    on_intel do
      url "https://github.com/k6w/baton/releases/download/v0.3.5/baton-darwin-x64.tar.gz"
      sha256 "558835ae3d5722e49ca2f57cd4335a44765ac1d9131ed7af3d5dd1971d0c9e87"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/k6w/baton/releases/download/v0.3.5/baton-linux-arm64.tar.gz"
      sha256 "abbfedd769ea25039bae914810abcc8a35eeb4a74e8890d5215a9782b0207363"
    end
    on_intel do
      url "https://github.com/k6w/baton/releases/download/v0.3.5/baton-linux-x64.tar.gz"
      sha256 "171256e8d6ce7a28dc4e09a8dd278c5901519f4637203996ec446b206de8adec"
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
