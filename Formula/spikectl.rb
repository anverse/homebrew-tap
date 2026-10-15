class Spikectl < Formula
  desc "Command-line tool of the Nix release spike"
  homepage "https://github.com/anverse/spike-nix-release"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/anverse/spike-nix-release/releases/download/spikectl/v0.1.0/spikectl_0.1.0_darwin_arm64.tar.gz"
      sha256 "23b940ff98c391c9fcc21db09f9f55697410e01878e8056064606d663ca3f071"
    end
    on_intel do
      url "https://github.com/anverse/spike-nix-release/releases/download/spikectl/v0.1.0/spikectl_0.1.0_darwin_amd64.tar.gz"
      sha256 "d49c2393330bd8dcd0cbe1177d4f0c363d8e78d418575fcc3b5822b16e836c67"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anverse/spike-nix-release/releases/download/spikectl/v0.1.0/spikectl_0.1.0_linux_arm64.tar.gz"
      sha256 "78c6ce53c910c2dba88a19b1b8c02bba6fc1d61e8c687049b911f6db2dfd2953"
    end
    on_intel do
      url "https://github.com/anverse/spike-nix-release/releases/download/spikectl/v0.1.0/spikectl_0.1.0_linux_amd64.tar.gz"
      sha256 "201d6f0e14c37dda4760e6ef0b370366f30f6227adbb1eeb48b4845ade67afad"
    end
  end

  def install
    bin.install "spikectl"
  end

  test do
    assert_match "spikectl #{version}", shell_output("#{bin}/spikectl version")
  end
end
