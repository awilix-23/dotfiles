#!/bin/bash
# Purpose: Select utility commands

OPTIONS=("Night_Light" "Inhibit_Idle" "Toggle_Display" "Pomodoro" "Record")

SELECTED=$(for opt in ${OPTIONS[@]}; do
  echo "${opt}"
done | wmenu-wrap.bash -t custom -l ${#OPTIONS[@]})

case ${SELECTED} in
    "Night_Light")
      if pgrep wlsunset; then
        pkill wlsunset
        exit 0
      fi
      wlsunset -g 0.7 & disown
      break ;;
    "Inhibit_Idle") # assumes foot is always open
      dunstify "sway_menu" "not working properly"
      CURRENT_SESSION=$(find /tmp/ -maxdepth 1 -name "inhibit_idle.*")
      if [[ -n ${CURRENT_SESSION} ]]; then
        rm ${CURRENT_SESSION}
        swaymsg 'for_window [app_id="foot"] inhibit_idle none'
        exit 0
      fi
      swaymsg 'for_window [app_id="foot"] inhibit_idle open'
      mktemp -t inhibit_idle.XXX
      break ;;
    "Toggle_Display")
      swaymsg 'output "LVDS-1" toggle'
      break ;;
    "Pomodoro")
      if pgrep pomodoro; then
        pomodoro.bash "off"
        exit 0
      fi
      pomodoro.bash
      break ;;
    "Record")
      if pgrep wf-recorder; then
        record.bash "off"
        exit 0
      fi
      record.bash
      break ;;
    *)
      exit 1
esac

exit 0
