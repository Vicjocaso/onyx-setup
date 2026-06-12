#!/bin/bash

sudo dnf install -y \
  gcc gcc-c++ make pkg-config autoconf clang pipx \
  openssl-devel readline-devel zlib-devel ncurses-devel libffi-devel \
  sqlite-devel libpq-devel postgresql
