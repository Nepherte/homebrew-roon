cask "arco" do
  version "0.3.7"
  sha256 "1e08d99bc806f5db8263475d9cddb55c4ea2ec468b0563df1e0a10ea09cb3843"

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
