cask "arco" do
  version "0.5.0"
  sha256 "a79cf2a9bc2c33c0d51113c90096fb93832b4815680ab15ce084bc6805cb8772"

  url "https://github.com/renebouwmeester/arco/releases/download/v#{version}/Arco-#{version}.pkg"
  name "Arco"
  desc "Play Apple Music on Roon zones from the menu bar"
  homepage "https://github.com/renebouwmeester/arco"

  livecheck do
    url :url
    strategy :github_releases
  end

  auto_updates true
  depends_on macos: :sonoma

  pkg "Arco-#{version}.pkg"

  uninstall pkgutil: "nl.renebouwmeester.arco.pkg",
            delete:  [
              "/Applications/Arco.app",
              "/Library/Audio/Plug-Ins/HAL/Arco.driver",
            ]
end
