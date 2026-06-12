#!/bin/bash

# Browse the web with the most popular browser. See https://www.google.com/chrome/
if [ ! -f /etc/yum.repos.d/google-chrome.repo ]; then
  sudo dnf install -y fedora-workstation-repositories
  sudo dnf config-manager setopt google-chrome.enabled=1
fi

sudo dnf install -y google-chrome-stable
xdg-settings set default-web-browser google-chrome.desktop
