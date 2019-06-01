#!/bin/bash
setxkbmap -option "caps:swapescape"

# set caps_lock as escape
xinput set-prop  "SynPS/2 Synaptics TouchPad" "libinput Natural Scrolling Enabled" 1
# natural scrolling enabled
setxkbmap -layout us,il -variant intl,phonetic
setxkbmap -option grp:alt_shift_toggle
