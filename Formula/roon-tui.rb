class RoonTui < Formula
  version "0.0.3"
  license "MIT"

  desc "A Roon Remote for the terminal"
  homepage "https://github.com/TheAppgineer/roon-tui"

  url "https://github.com/TheAppgineer/roon-tui.git", tag: "#{version}"
  head "https://github.com/TheAppgineer/roon-tui.git", branch: "develop"
  sha256 "9491bf36af59c4498e997a09a7fba745ce734f16d508ae30dd687986c8cbed88"

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
