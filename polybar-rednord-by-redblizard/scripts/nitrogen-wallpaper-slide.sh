#! /bin/bash

export DISPLAY=":0"

WALLPAPERS="/home/denise/Pictures/pink-nord-theme/"
#WALLPAPERS="/home/denise/Pictures/wallpapers-dt/"
ALIST=( `ls -w1 $WALLPAPERS` )
RANGE=${#ALIST[@]}
let "number = $RANDOM % $RANGE"
nitrogen --set-scaled --save $WALLPAPERS/${ALIST[$number]}
