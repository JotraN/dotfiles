#!/bin/bash
sleep 1
xset dpms force off
i3-msg workspace 100 && i3-msg 'rename workspace 100 to "wall"'
sh ~/.fehbg
i3lock -i lock.png &
while pgrep i3lock &> /dev/null; do
	sleep 1
done
xset -dpms
