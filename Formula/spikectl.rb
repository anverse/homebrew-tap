class Spikectl < Formula
  desc "Command-line tool of the Nix release spike"
  homepage "https://github.com/anverse/spike-nix-release"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/anverse/spike-nix-release/releases/download/spikectl/v0.2.0/spikectl_0.2.0_darwin_arm64.tar.gz"
      sha256 "a3e72f390aa7ddebc0346df3e05b0b34b736d974f970bd2be7ddc22699e189f5"
    end
    on_intel do
      url "https://github.com/anverse/spike-nix-release/releases/download/spikectl/v0.2.0/spikectl_0.2.0_darwin_amd64.tar.gz"
      sha256 "de68edc2b92ea7f674e9516a8fdd1253a7148d545fa9832d686e53a1f1a7043c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anverse/spike-nix-release/releases/download/spikectl/v0.2.0/spikectl_0.2.0_linux_arm64.tar.gz"
      sha256 "1e9ec4565d9247d693c73229e4f29b86ac8e24fa5b109849d33958b42e86f124"
    end
    on_intel do
      url "https://github.com/anverse/spike-nix-release/releases/download/spikectl/v0.2.0/spikectl_0.2.0_linux_amd64.tar.gz"
      sha256 "4812e972fe3d5909f834213028d9da5d0ecf96552333ee4a829e21fe4d7fac1a"
    end
  end

  def install
    bin.install "spikectl"
  end

  test do
    assert_match "spikectl #{version}", shell_output("#{bin}/spikectl version")
  end
end
