#!/usr/bin/env bash

USERNAME="screencasts"
FULLNAME="Screencasts"
PASSWORD="vagrant"
HOMEDIR="/Users/$USERNAME"

# Create a local admin user account
sudo sysadminctl \
  -addUser $USERNAME \
  -fullName "$FULLNAME" \
  -password "$PASSWORD"  \
  -home "$HOMEDIR" \
  -admin \
  -adminUser vagrant \
  -adminPassword vagrant

sudo createhomedir -c 2>&1 | grep -v "shell-init"

sudo cp -rf /Users/vagrant/.ssh "$HOMEDIR"
sudo chown -R $USERNAME $HOMEDIR
