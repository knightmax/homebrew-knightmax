class Purectx < Formula
  desc "Command-output purification proxy for Large Language Models"
  homepage "https://github.com/knightmax/PureCtx"
  url "https://github.com/knightmax/PureCtx/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "20c9815f778751492dd995d565dd909391573707fcd3467596f4deff4ba39a9c"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match "pure", shell_output("#{bin}/pure --version")
  end
end
