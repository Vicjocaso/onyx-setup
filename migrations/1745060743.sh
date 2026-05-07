#!/bin/bash

cp ~/.local/share/vicjoub/configs/alacritty/shared.toml ~/.config/alacritty/shared.toml
cp ~/.local/share/vicjoub/configs/alacritty/pane.toml ~/.config/alacritty/pane.toml
cp ~/.local/share/vicjoub/configs/alacritty/btop.toml ~/.config/alacritty/btop.toml
cp ~/.local/share/vicjoub/configs/alacritty.toml ~/.config/alacritty/alacritty.toml

source $VICJOUB_PATH/applications/About.sh
source $VICJOUB_PATH/applications/Activity.sh
source $VICJOUB_PATH/applications/Neovim.sh
source $VICJOUB_PATH/applications/Docker.sh
source $VICJOUB_PATH/applications/Vicjoub.sh

alacritty migrate 2>/dev/null || true
alacritty migrate -c ~/.config/alacritty/pane.toml 2>/dev/null || true
alacritty migrate -c ~/.config/alacritty/btop.toml 2>/dev/null || true
