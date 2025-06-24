#!/bin/bash
# Purpose: Start a pomodoro timer

SESSIONS=2
WORK=50 # in minutes
BREAK=10 # in minutes

CURRENT_SESSION=$(find /tmp/ -maxdepth 1 -name "pomodoro.*")

if [[ -n $1 ]]; then
  dunstify "pomodoro" "Ending session early !"
  rm ${CURRENT_SESSION}
  # pkill should already kill script, but just in case I included exit
  pkill pomodoro
  exit 0
fi

if [[ -n ${CURRENT_SESSION} ]]; then
  exit 1
fi

function pomodoro {
  dunstify "pomodoro" "Work timer started at $(date +%H:%M)"
  sleep $(( ${WORK} * 60 ))
  dunstify "pomodoro" "Take a break !"
  sleep $(( ${BREAK} * 60 ))
}

for i in $(seq 1 ${SESSIONS}); do
  TEMP=$(mktemp -t pomodoro.XXX)
  echo "Started $(date +%H:%M)" > ${TEMP}
  pomodoro
  rm ${TEMP}
done

dunstify "pomodoro" "Time block completed ! yay :3"
