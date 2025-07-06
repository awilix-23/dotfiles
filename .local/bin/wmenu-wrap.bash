#!/bin/bash
# Purpose: wmenu and wmenu-run wrapper to save styling

TYPE="run"
CONFIG="-i -N 1e1e2e -n cdd6f4 -M 89dceb -m 1e1e2e -S f5c2e7 -s 1e1e2e"

case $1 in
  -t|--type)
    TYPE=$2
esac

case ${TYPE} in
  "run")
    exec /usr/bin/wmenu-run ${CONFIG} -f "RobotoMonoNerdFont 11" -p "[run] "
    break ;;
  "custom")
    exec /usr/bin/wmenu ${CONFIG} -f "RobotoMonoNerdFont 11" -p "[utils] "
    break ;;
  *)
    echo "Unknown type"
    exit 1 ;;
esac

exit 0
