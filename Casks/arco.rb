cask "arco" do
  version "0.3.3"
  sha256 "3f5b9ea9ea38b13e8b41032192674533d490041e9e1969a889a673068a731e3e"

  url "https://github.com/renebouwmeester/arco/releases/download/v#{version}/Arco-#{version}.pkg"
  name "Arco"
  desc "Play Apple Music on Roon zones from the menu bar"
  homepage "https://github.com/renebouwmeester/arco"

  auto_updates true
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
