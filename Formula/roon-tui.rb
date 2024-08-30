class RoonTui < Formula
  desc "Roon Remote for the terminal"
  homepage "https://github.com/TheAppgineer/roon-tui"
  url "https://github.com/TheAppgineer/roon-tui/archive/refs/tags/0.3.2.tar.gz"
  head "https://github.com/TheAppgineer/roon-tui.git", branch: "master"
  sha256 "fabeaa51482393f02b921e2bad64d2f95108d064b9898381c3a07098abab9694"
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
