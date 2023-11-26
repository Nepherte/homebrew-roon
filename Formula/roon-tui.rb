class RoonTui < Formula
  desc "Roon Remote for the terminal"
  homepage "https://github.com/TheAppgineer/roon-tui"

  url "https://github.com/TheAppgineer/roon-tui.git", tag: "0.1.0"
  sha256 "1b5bdb6be9f9601b6951672f99a18cb89c0d6e59ccc1453314f94b4d0579271b"
  head "https://github.com/TheAppgineer/roon-tui.git", branch: "master"

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
