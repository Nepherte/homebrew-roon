cask "arco" do
  version "0.3.6"
  sha256 "da64893967510f33741d1f38ae59f11f108b421715dca2114bd106950040aff8"

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
