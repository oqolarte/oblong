#!/bin/sh -e

export LANG=en_US.UTF-8
export ENV=$HOME/.kshrc
xinput set-button-map	/dev/wsmouse0	1 2 3 5 4 7 6
export PATH="$HOME/bin:$PATH"
xset -b off
xset r rate 250 60 &
xrdb -merge ~/.Xresources &
setxkbmap -option caps:escape
exec cwm
