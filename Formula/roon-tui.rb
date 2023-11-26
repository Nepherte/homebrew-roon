class RoonTui < Formula
  desc "Roon Remote for the terminal"
  homepage "https://github.com/TheAppgineer/roon-tui"
  url "https://github.com/TheAppgineer/roon-tui/archive/refs/tags/1.0.0.tar.gz"
  head "https://github.com/TheAppgineer/roon-tui.git", branch: "master"
  sha256 "ab687b3ea38972569153d4757a417cab840ca34ce9ecf06aa43e06c61e485be0"
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
