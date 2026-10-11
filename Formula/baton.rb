class Baton < Formula
  desc "One terminal for all your coding agents, working as a team"
  homepage "https://github.com/k6w/baton"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/k6w/baton/releases/download/v0.3.2/baton-darwin-arm64.tar.gz"
      sha256 "d2bae3398f180580aa49ca670e0cf78ad9723d4534ea081e06513915a275e08a"
    end
    on_intel do
      url "https://github.com/k6w/baton/releases/download/v0.3.2/baton-darwin-x64.tar.gz"
      sha256 "8927b82336b0236808bf32f9de06191e24f9c5909a09c941d067f2520ceaa608"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/k6w/baton/releases/download/v0.3.2/baton-linux-arm64.tar.gz"
      sha256 "312bee7b6a8ed56749da31981f167bae10f86c552aceb780d8d4c18142add3e5"
    end
    on_intel do
      url "https://github.com/k6w/baton/releases/download/v0.3.2/baton-linux-x64.tar.gz"
      sha256 "db33b4d800c2b3db34ced8f125d1ff2fc0395fd0a03ea5c5e3938871ba6733fa"
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
