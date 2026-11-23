# Written by SuperFly-orchestrator's CI on each release: edits here are overwritten.
class Sfm < Formula
  desc "Deploys and manages SuperFly HTML Engine containers"
  homepage "https://docs.superfly.tv/html-engine"
  version "4.6.0"

  on_macos do
    on_arm do
      url "https://github.com/SuperFlyTV/SuperFly-releases/releases/download/manager-v4.6.0/sfm-darwin-arm64"
      sha256 "9909421dae51633abb103a602fd6f876f870f29e8b23eea475f5d01cde556748"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SuperFlyTV/SuperFly-releases/releases/download/manager-v4.6.0/sfm-linux-amd64"
      sha256 "ad682ba21167329ae24498bcd3b4ceda665901aa4583c5fd1c51574a3abbe685"
    end
    on_arm do
      url "https://github.com/SuperFlyTV/SuperFly-releases/releases/download/manager-v4.6.0/sfm-linux-arm64"
      sha256 "6a5ca74d771e719ab35edf8c6171a59c0286ab97b4abf40ac6073a18e0127431"
    end
  end

  def install
    binary = Dir["sfm-*"].first
    chmod 0755, binary
    bin.install binary => "sfm"
  end

  test do
    system bin/"sfm", "--help"
  end
end
