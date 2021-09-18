#!/bin/bash
killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
polybar -q main -c ${XDG_CONFIG_HOME:-$HOME/.config}/polybar/config.ini &
