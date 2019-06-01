#!/bin/bash
FILM=$1
COUNT=${2:-5}

compute_time() {
hours=0
minutes=$1
if [ $minutes -ge 60 ]; then
  let hours=minutes/60
  let minutes=minutes%60
fi
printf "%s:%s:00" "$hours" "$minutes"
}

BN=$(basename "$FILM" .flac)
let MINS=0
for i in $(seq 1 $COUNT); do
let MINS=MINS+10
TIME_POS=$(compute_time $MINS)
echo $TIME_POS
ffmpeg -ss ${TIME_POS} -i "${FILM}" -vframes 1 "$HOME/thumbnails/${BN}.thumb.${i}.png"
done
