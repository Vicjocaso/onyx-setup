#!/bin/bash

cat <<EOF >~/.local/share/applications/Vicjoub.desktop
[Desktop Entry]
Version=1.0
Name=Vicjoub
Comment=Vicjoub Controls
Exec=alacritty --config-file /home/$USER/.config/alacritty/pane.toml --class=Vicjoub --title=Vicjoub -e vicjoub
Terminal=false
Type=Application
Icon=/home/$USER/.local/share/vicjoub/applications/icons/Vicjoub.png
Categories=GTK;
StartupNotify=false
EOF
