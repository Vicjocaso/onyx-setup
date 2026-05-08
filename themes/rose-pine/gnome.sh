#!/bin/bash

ONYX_THEME_COLOR="red"
ONYX_THEME_BACKGROUND="rose-pine/background.jpg"
source $ONYX_PATH/themes/set-gnome-theme.sh
gsettings set org.gnome.desktop.interface color-scheme 'prefer-light'
