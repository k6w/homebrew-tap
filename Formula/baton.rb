class Baton < Formula
  desc "One terminal for all your coding agents, working as a team"
  homepage "https://github.com/k6w/baton"
  version "0.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/k6w/baton/releases/download/v0.3.4/baton-darwin-arm64.tar.gz"
      sha256 "842887f1475165a8f841284e742e0a1c7258cdbd63a79b69378b4415fd71cc65"
    end
    on_intel do
      url "https://github.com/k6w/baton/releases/download/v0.3.4/baton-darwin-x64.tar.gz"
      sha256 "36fb752883693ed898efe9b43d1df8b46f244eebc78c0108a8a8e0bb15252513"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/k6w/baton/releases/download/v0.3.4/baton-linux-arm64.tar.gz"
      sha256 "c8e8906a8cc845ebc3361f33b757478ed91ba7f1e4bf91595de89a281f9bdc1c"
    end
    on_intel do
      url "https://github.com/k6w/baton/releases/download/v0.3.4/baton-linux-x64.tar.gz"
      sha256 "5da54c5a914d6fa617b7964eeef610fad6db8c6592957a942edd7d4f6e8dabbf"
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
