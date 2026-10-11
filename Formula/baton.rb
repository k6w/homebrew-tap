class Baton < Formula
  desc "One terminal for all your coding agents, working as a team"
  homepage "https://github.com/k6w/baton"
  version "0.3.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/k6w/baton/releases/download/v0.3.6/baton-darwin-arm64.tar.gz"
      sha256 "6961d0a75efa0c0823429efb4b3aa86ad3a9a1f721d41255e379575cda11feff"
    end
    on_intel do
      url "https://github.com/k6w/baton/releases/download/v0.3.6/baton-darwin-x64.tar.gz"
      sha256 "16ed8ca86f3203fafb35fb52276c2ef36f3d624a646e8d8bb999c3220e6446b0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/k6w/baton/releases/download/v0.3.6/baton-linux-arm64.tar.gz"
      sha256 "bb712ba193617db2e251a51851f64636c86a3e9eb9eb16cbe6a61cf1fc54d744"
    end
    on_intel do
      url "https://github.com/k6w/baton/releases/download/v0.3.6/baton-linux-x64.tar.gz"
      sha256 "7bf3436bbfe8d47faa55fef22529a07e8e28d1be4df4d7024947bd35a1a3cc6d"
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
