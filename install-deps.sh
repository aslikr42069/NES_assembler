#!/bin/bash -x
set -e
source /etc/os-release

case "$ID" in
fedora)
 dnf install -y gcc gcc-g++ git chicken
 sed -i 's/chicken-csc/csc/g' Makefile
;;
arch)
 pacman -S --needed --noconfirm base-devel git chicken
;;
debian)
 apt-get install -y git gcc g++ chicken-bin
 sed -i 's/chicken-csc/csc/g' Makefile
;;
esac
