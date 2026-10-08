cask "arco" do
  version "0.3.1"
  sha256 "7bd803ce7e5753a64e80b95a07312e91b11e4956d4eee4e6debad611e8047bbf"

  url "https://github.com/renebouwmeester/arco/releases/download/v#{version}/Arco-#{version}.pkg"
  name "Arco"
  desc "Play Apple Music on Roon zones from the menu bar"
  homepage "https://github.com/renebouwmeester/arco"

  depends_on macos: :sonoma

  pkg "Arco-#{version}.pkg"

  uninstall pkgutil: "nl.renebouwmeester.arco.pkg",
            delete:  [
              "/Applications/Arco.app",
              "/Library/Audio/Plug-Ins/HAL/Arco.driver",
            ]

  caveats <<~EOS
    For a full cleanup of Arco's settings and permissions, choose
    “Uninstall Arco…” from the app's menu before removing this cask.
  EOS
end
