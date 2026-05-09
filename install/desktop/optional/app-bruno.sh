#!/bin/bash

# Open-source API client — https://www.usebruno.com
BRUNO_VERSION=$(curl -s https://api.github.com/repos/usebruno/bruno/releases/latest | grep -oP '"tag_name": "v\K[^"]+')
ARCH=$(dpkg --print-architecture)

cd /tmp
wget -O bruno.deb "https://github.com/usebruno/bruno/releases/download/v${BRUNO_VERSION}/bruno_${BRUNO_VERSION}_${ARCH}_linux.deb"
sudo apt install -y ./bruno.deb
rm bruno.deb
cd -
