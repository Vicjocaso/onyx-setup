#!/bin/bash

# A Communication platform for voice, video, and text messaging https://discord.com/
cd /tmp
wget https://discord.com/api/download?platform=linux&type=rpm -O discord.rpm
sudo dnf install -y ./discord.rpm
rm discord.rpm
cd -
