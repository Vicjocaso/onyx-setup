#!/bin/bash

# Flatpak is pre-installed on Fedora; just ensure Flathub is added
sudo dnf install -y flatpak
sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
