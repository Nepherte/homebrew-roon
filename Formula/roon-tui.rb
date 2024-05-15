class RoonTui < Formula
  desc "Roon Remote for the terminal"
  homepage "https://github.com/TheAppgineer/roon-tui"
  url "https://github.com/TheAppgineer/roon-tui/archive/refs/tags/0.3.1.tar.gz"
  head "https://github.com/TheAppgineer/roon-tui.git", branch: "master"
  sha256 "5f29a3fcd9e0b136e4b606e6287b0705d58ffb7ef277d88e8c808d2b1c3a035d"
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
