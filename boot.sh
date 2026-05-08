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
echo "=> Onyx is for fresh Ubuntu 24.04+ installations only!"
echo -e "\nBegin installation (or abort with ctrl+c)..."

sudo apt-get update >/dev/null
sudo apt-get install -y git >/dev/null

echo "Cloning Onyx..."
rm -rf ~/.local/share/onyx
git clone https://github.com/basecamp/onyx.git ~/.local/share/onyx >/dev/null
if [[ $ONYX_REF != "master" ]]; then
	cd ~/.local/share/onyx
	git fetch origin "${ONYX_REF:-stable}" && git checkout "${ONYX_REF:-stable}"
	cd -
fi

echo "Installation starting..."
source ~/.local/share/onyx/install.sh
