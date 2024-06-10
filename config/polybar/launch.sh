#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
#killall -q polybar
# Ожидание полного завершения работы процессов
#while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log
polybar bar 2>&1 | tee -a /tmp/polybar1.log & disown
#polybar topmiddle 2>&1 | tee -a /tmp/polybar2.log & disown
#polybar topright 2>&1 | tee -a /tmp/polybar3.log & disown

#polybar topleft | polybar topmiddle | polybar topright 
echo "Bars launched..."
