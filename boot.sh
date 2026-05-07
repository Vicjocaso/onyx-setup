#!/bin/bash

set -e

ascii_art='________                  __        ___.
\_____  \   _____ _____  |  | ____ _\_ |__
 /   |   \ /     \\__   \ |  |/ /  |  \ __ \
/    |    \  Y Y  \/ __ \|    <|  |  / \_\ \
\_______  /__|_|  (____  /__|_ \____/|___  /
        \/      \/     \/     \/         \/
'

echo -e "$ascii_art"
echo "=> Vicjoub is for fresh Ubuntu 24.04+ installations only!"
echo -e "\nBegin installation (or abort with ctrl+c)..."

sudo apt-get update >/dev/null
sudo apt-get install -y git >/dev/null

echo "Cloning Vicjoub..."
rm -rf ~/.local/share/vicjoub
git clone https://github.com/basecamp/vicjoub.git ~/.local/share/vicjoub >/dev/null
if [[ $VICJOUB_REF != "master" ]]; then
	cd ~/.local/share/vicjoub
	git fetch origin "${VICJOUB_REF:-stable}" && git checkout "${VICJOUB_REF:-stable}"
	cd -
fi

echo "Installation starting..."
source ~/.local/share/vicjoub/install.sh
