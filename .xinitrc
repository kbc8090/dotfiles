#!/bin/sh

# invoke global X session script
if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# merge Xresources on each log in
userresources=$HOME/.Xresources
if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

# initial startup commands and execute a desktop environment
export XSESSION_PID="$$"
xrandr -s 1920x1080 &
xset r rate 340 59 &
xset s off -dpms &
nitrogen --restore &
# xclickroot jgmenu &
exec awesome
