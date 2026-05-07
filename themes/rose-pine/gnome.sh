#!/bin/bash

VICJOUB_THEME_COLOR="red"
VICJOUB_THEME_BACKGROUND="rose-pine/background.jpg"
source $VICJOUB_PATH/themes/set-gnome-theme.sh
gsettings set org.gnome.desktop.interface color-scheme 'prefer-light'
