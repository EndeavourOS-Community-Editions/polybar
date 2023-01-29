#!/bin/sh
# Simple script to show the cpu temp formatted to be shown in polybar

temp=$(sensors | grep "Tctl" | sed "s/Tctl: *+//;s/°C *//")
if [ 1 -eq "$(echo "$temp > 80" | bc)" ]; then
    printf "%%{F#BF616A}"
elif [ 1 -eq "$(echo "$temp > 60" | bc)" ]; then
    printf "%%{F#858383}";
fi
echo "$temp"°C
