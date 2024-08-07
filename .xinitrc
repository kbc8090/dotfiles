#!/bin/sh

# invoke global X session script
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
  for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# merge Xresources on each log in
userresources=$HOME/.Xresources
if [ -f "$userresources" ]; then
  xrdb -merge "$userresources"
fi

# initial startup commands/programs and execute a desktop environment
export XSESSION_PID="$$"
xrandr -s 1920x1080 &
xset s off -dpms &
xset r rate 320 60 &
numlockx &
# nitrogen --set-zoom-fill --random &
nitrogen --restore &
pipewire &
pipewire-pulse &
wireplumber &
# clipit &
# volumeicon &
# xclickroot jgmenu &
#sleep 0.5 & exec /usr/local/bin/awesome
sleep 0.5 & exec awesome
#exec dbus-launch dwm
