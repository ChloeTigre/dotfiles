#!/bin/bash
WAIT_TIME=${1:-600}
WALLPAPER_PATH=${2:-/home/chloe/Wallpapers}
while true; do
	feh --randomize --bg-fill ${WALLPAPER_PATH}/*
	sleep $WAIT_TIME
done
