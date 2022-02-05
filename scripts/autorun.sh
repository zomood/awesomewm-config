#!/usr/bin/env bash

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

# Mouse / Touchpad
xinput set-prop 14 296 -1
xinput set-prop 16 308 1
xinput set-prop 16 285 1

# Keyboard
xset led
setxkbmap -layout "us,de" -option "grp:alt_shift_toggle"

# Wallpaper
feh --bg-max ~/Pictures/Wallpapers/jupiter-close.jpg

# Sound server
run pulseaudio

# Compositor
run picom
