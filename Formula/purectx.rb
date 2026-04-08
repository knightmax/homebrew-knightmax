class Purectx < Formula
  desc "Command-output purification proxy for Large Language Models"
  homepage "https://github.com/knightmax/PureCtx"
  url "https://github.com/knightmax/PureCtx/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "c9c3de37e8c9be447c29b66edbfb8f0c6c5a3e09a1dc8c9143a5f1e2db69d098"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match "pure", shell_output("#{bin}/pure --version")
  end
end
