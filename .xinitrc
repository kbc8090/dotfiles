#!/bin/sh

# invoke global X session script
if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

userresources=$HOME/.Xresources
if [ -f "$userresources" ]; then

    xrdb -merge "$userresources"

fi

xset r rate 300 59 &
xset s off -dpms
xrandr -s 1920x1200 &
nitrogen --restore &
#$HOME/.local/bin/wallpaper &
exec dwm
