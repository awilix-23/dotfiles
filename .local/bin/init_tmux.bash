#!/bin/bash
# Purpose: create tmux session based on directory name.
#   Requires a tmux session to already be in place.

if [[ $# -eq 1 ]]; then
  selected=$1
else
  # Add directories to list :3
  selected=$(find ~/Documents/Spring_2025 ~/work ~/work/Embedding ~/Desktop ~/Desktop/odin_project -mindepth 1 -maxdepth 1 -type d | fzf)
fi

if [[ -z $selected ]]; then
  exit 1
fi

selected_name=$(basename "$selected" | cut -d "_" -f 1)
current_session=$(pgrep tmux)


if [[ -z $TMUX ]] && [[ -z $current_session ]]; then
  tmux new-session -s $selected_name -c $selected
  exit 0
fi

if ! tmux has-session -t=$selected_name; then
  tmux new-session -ds $selected_name -c $selected
fi

tmux switch-client -t $selected_name
