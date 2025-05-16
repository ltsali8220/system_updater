#!/bin/bash

echo "[INFO] Starting Linux system update..."

# Debian/Ubuntu
if [ -f /etc/debian_version ]; then
    sudo apt update && sudo apt upgrade -y

# Red Hat/CentOS
elif [ -f /etc/redhat-release ]; then
    sudo yum update -y

# Arch
elif [ -f /etc/arch-release ]; then
    sudo pacman -Syu --noconfirm

else
    echo "[ERROR] Unsupported Linux distro"
    exit 1
fi

echo "[INFO] Linux system update complete."
