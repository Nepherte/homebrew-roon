cask "arco" do
  version "0.5.1"
  sha256 "73ef6d43a58c0d2fd5d9feb65500dfa70f011ee9387323ae7e9b2474c689a5cc"

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
