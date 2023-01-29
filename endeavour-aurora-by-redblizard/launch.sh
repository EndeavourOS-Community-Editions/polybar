#!/bin/bash

## Files and Directories
DIR="$HOME/.config/polybar"
include-file = ~/.config/polybar/colors.ini
include-file = ~/.config/polybar/modules.ini
include-file = ~/.config/polybar/decor.ini

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar
polybar bigscreen &
polybar smallscreen &

sleep 1

echo "Bars launched..."

