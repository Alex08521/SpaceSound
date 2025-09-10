sudo rm -r "/usr/share/sounds/SpaceSounds"
sudo mkdir -p "/usr/share/sounds/SpaceSounds"
sudo cp -ur ./stereo /usr/share/sounds/SpaceSounds
sudo cp -u index.theme /usr/share/sounds/SpaceSounds
sudo cp -u index.theme.license /usr/share/sounds/SpaceSounds
sudo cp -u LICENSE /usr/share/sounds/SpaceSounds

kwriteconfig5 --file ~/.config/kdeglobals --group "KNotify" --key "themeName" "SpaceSounds"

killall plasmashell && kstart plasmashell

echo "SpaceSounds has been installed. Enjoy."
