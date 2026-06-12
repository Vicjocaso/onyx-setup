#!/bin/bash

# AI-powered code editor. See https://cursor.com/
if [ ! -f /etc/yum.repos.d/cursor.repo ]; then
  sudo rpm --import https://downloads.cursor.com/keys/anysphere.asc
  echo -e "[cursor]\nname=Cursor\nbaseurl=https://downloads.cursor.com/rpmrepo/stable\nenabled=1\ngpgcheck=1\ngpgkey=https://downloads.cursor.com/keys/anysphere.asc" | sudo tee /etc/yum.repos.d/cursor.repo > /dev/null
fi

sudo dnf install -y cursor
