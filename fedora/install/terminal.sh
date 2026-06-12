#!/bin/bash

# Enable RPM Fusion (required for vlc, steam, and media codecs)
sudo dnf install -y \
  "https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm" \
  "https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm"

# Needed for all installers
sudo dnf upgrade -y
sudo dnf install -y curl git unzip

# Run terminal installers
for installer in ~/.local/share/onyx/fedora/install/terminal/*.sh; do source $installer; done
