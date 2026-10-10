cask "arco" do
  version "0.3.4"
  sha256 "0f42126aa9b8bf51273a203d0de9961d19de795d6f2ecbebd2df45e083c24555"

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
