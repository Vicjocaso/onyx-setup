#!/bin/bash

# Modern terminal — https://www.warp.dev
if [ ! -f /etc/yum.repos.d/warpdotdev.repo ]; then
  sudo rpm --import https://releases.warp.dev/linux/keys/warp.asc
  echo -e "[warpdotdev]\nname=Warp\nbaseurl=https://releases.warp.dev/linux/rpm/stable\nenabled=1\ngpgcheck=1\ngpgkey=https://releases.warp.dev/linux/keys/warp.asc" | sudo tee /etc/yum.repos.d/warpdotdev.repo > /dev/null
fi

sudo dnf install -y warp-terminal
