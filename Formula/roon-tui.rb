class RoonTui < Formula
  desc "Roon Remote for the terminal"
  homepage "https://github.com/TheAppgineer/roon-tui"
  url "https://github.com/TheAppgineer/roon-tui/archive/refs/tags/0.3.0.tar.gz"
  head "https://github.com/TheAppgineer/roon-tui.git", branch: "master"
  sha256 "4187510ecc2e1b34636c41641cacf1090e21c00819829e6c0539d24e2e85ffc6"
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
