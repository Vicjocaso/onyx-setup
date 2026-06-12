#!/bin/bash

# Database management tool — https://tableplus.com
if [ ! -f /etc/yum.repos.d/tableplus.repo ]; then
  sudo rpm -v --import https://yum.tableplus.com/apt.tableplus.com.gpg.key
  sudo dnf config-manager addrepo --from-repofile=https://yum.tableplus.com/rpm/x86_64/tableplus.repo
fi

sudo dnf install -y tableplus
