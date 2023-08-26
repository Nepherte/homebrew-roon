class RoonTui < Formula
  desc "Roon Remote for the terminal"
  homepage "https://github.com/TheAppgineer/roon-tui"

  url "https://github.com/TheAppgineer/roon-tui.git", tag: "0.0.4"
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
