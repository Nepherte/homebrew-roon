cask "arco" do
  version "1.0"
  sha256 "eaec1422d4c60a05ff772921965359d22643f6cea5c08379751d247dfffc72da"

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
