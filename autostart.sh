#!/bin/sh

#nitrogen --restore &
#xrandr -s 1920x1200 &
#xset r rate 300 59 &
#$HOME/.local/bin/wallpaper &
picom &
killall dwmblocks
sleep 0.2 && dwmblocks &
