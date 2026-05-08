#!/bin/bash

cat <<EOF >~/.local/share/applications/Vicjoub.desktop
[Desktop Entry]
Version=1.0
Name=Vicjoub
Comment=Vicjoub Controls
Exec=bash -c "export VICJOUB_PATH=\$HOME/.local/share/vicjoub && export PATH=\$VICJOUB_PATH/bin:\$PATH && bash \$VICJOUB_PATH/bin/vicjoub"
Terminal=true
Type=Application
Icon=/home/$USER/.local/share/vicjoub/applications/icons/Vicjoub.png
Categories=GTK;System;
StartupNotify=false
EOF
