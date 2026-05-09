#!/bin/bash

set -e

echo ""
echo "  ██████  ███    ██ ██    ██ ██   ██"
echo " ██    ██ ████   ██  ██  ██   ██ ██"
echo " ██    ██ ██ ██  ██   ████     ███"
echo " ██    ██ ██  ██ ██    ██     ██ ██"
echo "  ██████  ██   ████    ██    ██   ██"
echo "          artificial-softworks"
echo ""
echo "=> Onyx is for fresh Ubuntu 26.04 LTS installations only!"
echo -e "\nBegin installation (or abort with ctrl+c)..."

sudo apt-get update >/dev/null
sudo apt-get install -y git >/dev/null

echo "Cloning Onyx..."
rm -rf ~/.local/share/onyx
git clone https://github.com/Vicjocaso/onyx-setup.git ~/.local/share/onyx >/dev/null
if [[ $ONYX_REF != "master" ]]; then
	cd ~/.local/share/onyx
	git fetch origin "${ONYX_REF:-stable}" && git checkout "${ONYX_REF:-stable}"
	cd -
fi

echo "Installation starting..."
source ~/.local/share/onyx/install.sh
