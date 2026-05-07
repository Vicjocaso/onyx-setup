#!/bin/bash

sudo echo "Running upgrade migration..."

# Add rustc and pgsql client libs
source $VICJOUB_PATH/install/terminal/libraries.sh

# Set name and class for desktop files
source $VICJOUB_PATH/applications/About.sh
source $VICJOUB_PATH/applications/Activity.sh
source $VICJOUB_PATH/applications/Basecamp.sh
source $VICJOUB_PATH/applications/HEY.sh
source $VICJOUB_PATH/applications/Docker.sh
source $VICJOUB_PATH/applications/Neovim.sh
source $VICJOUB_PATH/applications/Vicjoub.sh
source $VICJOUB_PATH/applications/WhatsApp.sh
