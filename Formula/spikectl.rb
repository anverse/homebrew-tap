class Spikectl < Formula
  desc "Command-line tool of the Nix release spike"
  homepage "https://github.com/anverse/spike-nix-release"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/anverse/spike-nix-release/releases/download/spikectl/v0.4.0/spikectl_0.4.0_darwin_arm64.tar.gz"
      sha256 "d25c4c7e8c65736e3d371bad02083a6ab226ba7342a7b2f659817e81bdfb87f5"
    end
    on_intel do
      url "https://github.com/anverse/spike-nix-release/releases/download/spikectl/v0.4.0/spikectl_0.4.0_darwin_amd64.tar.gz"
      sha256 "def0fe85539405c1f8d9efa7b48bd01b9ea1ffd2aa907eeb4ca1194eb2cb47cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anverse/spike-nix-release/releases/download/spikectl/v0.4.0/spikectl_0.4.0_linux_arm64.tar.gz"
      sha256 "c3e3bbf144570599076058691b672da82f99668e8932a5563995484eff468816"
    end
    on_intel do
      url "https://github.com/anverse/spike-nix-release/releases/download/spikectl/v0.4.0/spikectl_0.4.0_linux_amd64.tar.gz"
      sha256 "6c2dd1e3d83de5bf02011c5a8f06cc1f1b0927000e90c6e9ca996c1b3529d20f"
    end
  end

  def install
    bin.install "spikectl"
  end

  test do
    assert_match "spikectl #{version}", shell_output("#{bin}/spikectl version")
  end
end
