#!/bin/bash
SONG=$1
START_TIME=$2
DURATION=${3:-0:02}

BN=$(basename "$SONG" .flac)
if [ "" = "$START_TIME" ];then
sox "${SONG}" -n remix 1 spectrogram -x 3000 -y 513 -z 120 -w Kaiser -o "$HOME/spectro-analysis/${BN}.spectre.png"
else
sox "${SONG}" -n remix 1 spectrogram -x 3000 -y 513 -z 120 -w Kaiser -S ${START_TIME} -d ${DURATION} -o "$HOME/spectro-analysis/${BN}.spectre.zoom.${START_TIME}__${DURATION}.png"
fi
