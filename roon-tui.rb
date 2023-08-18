class RoonTui < Formula
  desc "A Roon Remote for the terminal"
  homepage "https://github.com/TheAppgineer/roon-tui"
  url "https://github.com/TheAppgineer/roon-tui/archive/0.0.2.tar.gz"
  sha256 "8ffbc2db0a72165ab1ed83736784ec0f172a8fa36866fe616f4cc27bc220c895"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/roon-tui"
  end

  def caveats
    <<~EOS
      Enable the roon-tui extension with a Roon Remote under Settings -> Extensions.
    EOS
  end
end
