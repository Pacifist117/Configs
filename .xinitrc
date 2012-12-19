xrdb -merge ~/.Xresources         # update x resources db
exec i3 
exec i3lock -c 000000 && echo mem > /sys/power/state
