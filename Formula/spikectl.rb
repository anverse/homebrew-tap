class Spikectl < Formula
  desc "Command-line tool of the Nix release spike"
  homepage "https://github.com/anverse/spike-nix-release"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/anverse/spike-nix-release/releases/download/spikectl/v0.3.0/spikectl_0.3.0_darwin_arm64.tar.gz"
      sha256 "ffd3fb009983e92660dc50454a779356689552d36d00fe2b26084b6469e9aafa"
    end
    on_intel do
      url "https://github.com/anverse/spike-nix-release/releases/download/spikectl/v0.3.0/spikectl_0.3.0_darwin_amd64.tar.gz"
      sha256 "f2d71f207d4d094a56c0cab02d19f99e9524c2b0494e81be344faf88ae715ed0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anverse/spike-nix-release/releases/download/spikectl/v0.3.0/spikectl_0.3.0_linux_arm64.tar.gz"
      sha256 "9f5a88abc2dcb614336767c23a27b28b2cbebcef03b8eb07c4c238dc8ba5e77b"
    end
    on_intel do
      url "https://github.com/anverse/spike-nix-release/releases/download/spikectl/v0.3.0/spikectl_0.3.0_linux_amd64.tar.gz"
      sha256 "759e9a538d6abe888a349693392ec61dc2fd5922582789d26172f686607a1d86"
    end
  end

  def install
    bin.install "spikectl"
  end

  test do
    assert_match "spikectl #{version}", shell_output("#{bin}/spikectl version")
  end
end
