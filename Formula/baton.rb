class Baton < Formula
  desc "One terminal for all your coding agents, working as a team"
  homepage "https://github.com/k6w/baton"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/k6w/baton/releases/download/v0.3.1/baton-darwin-arm64.tar.gz"
      sha256 "8480edcb8999c9d613e35f2a9a7d4168bfff01378c0c212d7498408ce05c99f6"
    end
    on_intel do
      url "https://github.com/k6w/baton/releases/download/v0.3.1/baton-darwin-x64.tar.gz"
      sha256 "bc7595f4230953e950117e99c91cf687206669ec431bbc939d95d7f8a76c5971"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/k6w/baton/releases/download/v0.3.1/baton-linux-arm64.tar.gz"
      sha256 "f5b536dfcce32bab6f09c0d9f84429015a13772755ae591f9fd599f992d765fb"
    end
    on_intel do
      url "https://github.com/k6w/baton/releases/download/v0.3.1/baton-linux-x64.tar.gz"
      sha256 "f71c60972be49832036f84c51207adadd70b86c4b656f5f5a2577da91420ed08"
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
