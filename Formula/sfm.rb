# Written by SuperFly-orchestrator's CI on each release: edits here are overwritten.
class Sfm < Formula
  desc "Deploys and manages SuperFly HTML Engine containers"
  homepage "https://docs.superfly.tv/html-engine"
  version "4.5.3"

  on_macos do
    on_arm do
      url "https://github.com/SuperFlyTV/SuperFly-releases/releases/download/manager-v4.5.3/sfm-darwin-arm64"
      sha256 "f8f5fedf3e281db0cb1ed8eb91328b0870476e54b73563994e458f8a19c6cb7d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SuperFlyTV/SuperFly-releases/releases/download/manager-v4.5.3/sfm-linux-amd64"
      sha256 "4dc31c11b939574f7569c300102276400fcc16499bf9eb98cd6c688a943c952e"
    end
    on_arm do
      url "https://github.com/SuperFlyTV/SuperFly-releases/releases/download/manager-v4.5.3/sfm-linux-arm64"
      sha256 "a426d7a1c8a980b1216673e2cf2fb9500776265273f317c50f8a7c79f9335a38"
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
