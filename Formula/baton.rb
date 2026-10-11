class Baton < Formula
  desc "One terminal for all your coding agents, working as a team"
  homepage "https://github.com/k6w/baton"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/k6w/baton/releases/download/v0.1.0/baton-darwin-arm64.tar.gz"
      sha256 "74c3da31110b602fd8fdca997dd58cb074bec2aa30a0b69d36cc5fe118fc3fd4"
    end
    on_intel do
      url "https://github.com/k6w/baton/releases/download/v0.1.0/baton-darwin-x64.tar.gz"
      sha256 "c3f5401e4c3fba96880ec8bbe9c2601361402038b79eb1ff50c318843046575a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/k6w/baton/releases/download/v0.1.0/baton-linux-arm64.tar.gz"
      sha256 "4c57a45f0368ec52d6fe1c51ceb32b907ad28dea436fba7f84a8013f16d12941"
    end
    on_intel do
      url "https://github.com/k6w/baton/releases/download/v0.1.0/baton-linux-x64.tar.gz"
      sha256 "5f38b4ebe239f895b55ab3eddf1e9a7d40b95a666dca86b44438df45a42f5e29"
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
