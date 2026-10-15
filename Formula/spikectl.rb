class Spikectl < Formula
  desc "Command-line tool of the Nix release spike"
  homepage "https://github.com/anverse/spike-nix-release"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/anverse/spike-nix-release/releases/download/spikectl/v0.1.1/spikectl_0.1.1_darwin_arm64.tar.gz"
      sha256 "c331e5c95c2705ff0774e3864cd284d6d872f997cbfe8db4a3223539f81c2d08"
    end
    on_intel do
      url "https://github.com/anverse/spike-nix-release/releases/download/spikectl/v0.1.1/spikectl_0.1.1_darwin_amd64.tar.gz"
      sha256 "0f16e49a83e03e74d69de9fc8efb4c2ea5b20b073750670b72ade1c445217e23"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anverse/spike-nix-release/releases/download/spikectl/v0.1.1/spikectl_0.1.1_linux_arm64.tar.gz"
      sha256 "131f90ef6438752fc2c8d08f56477209420cc396e6d2c5bb52f29e503c309ce4"
    end
    on_intel do
      url "https://github.com/anverse/spike-nix-release/releases/download/spikectl/v0.1.1/spikectl_0.1.1_linux_amd64.tar.gz"
      sha256 "262871ef9001be5be453bf14d2492bf4bd08c96c3bd6e7c8114edbdcad7e4ccc"
    end
  end

  def install
    bin.install "spikectl"
  end

  test do
    assert_match "spikectl #{version}", shell_output("#{bin}/spikectl version")
  end
end
