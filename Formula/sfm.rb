# Written by SuperFly-orchestrator's CI on each release: edits here are overwritten.
class Sfm < Formula
  desc "Deploys and manages SuperFly HTML Engine containers"
  homepage "https://docs.superfly.tv/html-engine"
  version "4.5.2"

  on_macos do
    on_arm do
      url "https://github.com/SuperFlyTV/SuperFly-releases/releases/download/manager-v4.5.2/sfm-darwin-arm64"
      sha256 "e1e56ff30d63c9088727f51ee6ead3c3d204712603884c067f18936003518534"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SuperFlyTV/SuperFly-releases/releases/download/manager-v4.5.2/sfm-linux-amd64"
      sha256 "066429f6dcd905ff03c3c5dab7b0830d8358cd888a52b6e2c4be9422d5b7572f"
    end
    on_arm do
      url "https://github.com/SuperFlyTV/SuperFly-releases/releases/download/manager-v4.5.2/sfm-linux-arm64"
      sha256 "52e9883c368a1749e168a84829bd7fb1262100cb5e34b890352daf157566faaf"
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
