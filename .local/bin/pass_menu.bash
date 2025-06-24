#!/bin/bash -e
# Purpose: fuzzy find password

DIR=~/.password-store
password=$(find ${DIR} -name "*.gpg" | cut -d "/" -f 5- | cut -d "." -f 1 | fzf --prompt="[pass] ") || exit
pass -c ${password}
