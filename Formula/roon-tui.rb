class RoonTui < Formula
  desc "Roon Remote for the terminal"
  homepage "https://github.com/TheAppgineer/roon-tui"
  url "https://github.com/TheAppgineer/roon-tui/archive/refs/tags/0.2.0.tar.gz"
  head "https://github.com/TheAppgineer/roon-tui.git", branch: "master"
  sha256 "856a35ff87088bb7e9e187a03aef9885ef7e86f401f19745579dd2c51f3602f8"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  def caveats
    <<~EOS
      Enable the roon-tui extension with a Roon Remote under Settings -> Extensions.
    EOS
  end
end
