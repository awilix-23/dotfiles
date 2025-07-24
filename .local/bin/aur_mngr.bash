#!/bin/bash

BUILDS_DIR=~/.local/builds
LINK=$1 || exit 1
PACKAGE=$(echo ${LINK} | cut -d "/" -f 4 | cut -d "." -f 1)

git clone $1 ${BUILDS_DIR}/${PACKAGE}

less ${BUILDS_DIR}/${PACKAGE}/PKGBUILD
echo "Proceed with install ? [y/n]"
read RESPONSE

if [[ ${RESPONSE} != y ]]; then
  echo "Cancelling install :)"
  exit 0
else
  makepkg --dir ${BUILDS_DIR}/${PACKAGE} -sirc
  exit 0
fi
