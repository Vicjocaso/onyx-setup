#!/bin/bash

# Gum is used for the Onyx commands for tailoring Onyx after the initial install
cd /tmp
GUM_VERSION="0.17.0"
ARCH=$(uname -m)
wget -qO gum.rpm "https://github.com/charmbracelet/gum/releases/download/v${GUM_VERSION}/gum_${GUM_VERSION}_${ARCH}.rpm"
sudo dnf install -y ./gum.rpm
rm gum.rpm
cd -
