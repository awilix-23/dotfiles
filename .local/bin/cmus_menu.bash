#!/bin/bash -e
# Purpose: fuzzy find music and send to cmus

DIR=~/Music
song=$(find ${DIR} -name "*.m4a" | cut -d "/" -f 5 | fzf --prompt="[cmus] ") || exit
cmus-remote -f "${DIR}/${song}"
