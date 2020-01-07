#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

 #Launch
#polybar main >>/tmp/polybar1.log 2>&1 &

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload main >>/tmp/polybar.log 2>&1 &
  done
else
  polybar --reload main >>/tmp/polybar.log 2>&1 &
fi
