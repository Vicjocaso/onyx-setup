#!/bin/bash

cd /tmp
LOCALSEND_VERSION=$(curl -s "https://api.github.com/repos/localsend/localsend/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
wget -O localsend.AppImage "https://github.com/localsend/localsend/releases/latest/download/LocalSend-${LOCALSEND_VERSION}-linux-x86-64.AppImage"
chmod +x localsend.AppImage
sudo mv localsend.AppImage /opt/localsend.AppImage

cat <<EOF | sudo tee /usr/share/applications/localsend_app.desktop
[Desktop Entry]
Name=LocalSend
Comment=Share files with nearby devices
Exec=/opt/localsend.AppImage
Icon=network-transmit-receive
Terminal=false
Type=Application
Categories=Network;FileTransfer;
EOF
cd -
