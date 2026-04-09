class Ferrotunnel < Formula
  desc "Embeddable, extensible, and observable reverse tunnel for Rust developers"
  homepage "https://github.com/ferro-labs/ferrotunnel"
  url "https://github.com/ferro-labs/ferrotunnel/archive/refs/tags/v1.0.7.tar.gz"
  sha256 "c31f1eca979e69635724b5f574284f11be9cbf4ca421a3977737d087e2f70e81"
  license "MIT OR Apache-2.0"
  head "https://github.com/ferro-labs/ferrotunnel.git", branch: "main"

  depends_on "rust" => :build
  depends_on "pkg-config" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "ferrotunnel-cli")
  end

  test do
    version_output = shell_output("#{bin}/ferrotunnel --version")
    assert_match "ferrotunnel", version_output

    # Test that server --help works
    help_output = shell_output("#{bin}/ferrotunnel server --help")
    assert_match "Run the tunnel server", help_output
  end
end
