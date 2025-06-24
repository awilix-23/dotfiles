#!/bin/bash
# Purpose: start a (video only) recording

RESOLUTION=1600x900
FRAMES=30
DIR=~/Videos

current_recording=$(pgrep wf-recorder)
end_session=$1

if [[ -n ${end_session} ]]; then
  if [[ -z ${current_recording} ]]; then
    dunstify "wf-recorder" "No video recording in session"
  else
    dunstify "wf-recorder" "Stopping video recording !"
    sleep 1s
    pkill wf-recorder
  fi
    exit 0
fi

if [[ -z ${current_recording} ]]; then
  dunstify "wf-recorder" "Starting video recording !"
  wf-recorder -g "0,0 ${RESOLUTION}" -r ${FRAMES} -c libx264 -f ${DIR}/$(date +"%F_%T").mp4
else
  dunstify "wf-recorder" "Video recording already in session"
fi
