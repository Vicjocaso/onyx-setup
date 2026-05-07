#!/bin/bash

# Configure the bash shell using Vicjoub defaults
[ -f ~/.bashrc ] && mv ~/.bashrc ~/.bashrc.bak
cp ~/.local/share/vicjoub/configs/bashrc ~/.bashrc

# Load the PATH for use later in the installers
source ~/.local/share/vicjoub/defaults/bash/shell

[ -f ~/.inputrc ] && mv ~/.inputrc ~/.inputrc.bak
# Configure the inputrc using Vicjoub defaults
cp ~/.local/share/vicjoub/configs/inputrc ~/.inputrc
