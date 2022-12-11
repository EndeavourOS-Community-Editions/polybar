Place the following in your bspwmrc file

--> This polybar config is for now BSPWM ONLY !!!

```
#LAUNCHERS
$HOME/.config/polybar/launch.sh

#### MONITORS ####

#  monitors names query
bspc query -M --names

###This creates and names desktops for multiple monitors.
workspaces_multimonitor &

bspc monitor eDP -d I II III IV V VI VII VIII 
bspc monitor HDMI-A-0 -d I II III IV V VI VII VIII 


