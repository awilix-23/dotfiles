#!/bin/bash
pkill waybar && echo "Reloading waybar"
waybar & disown
