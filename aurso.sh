#!/bin/bash
cd `mktemp -d`
curl "https://aur.archlinux.org/packages/`expr substr $1 1 2`/$1/$1.tar.gz" | tar xz
cd $1
makepkg -si
