#!/bin/sh

chosen=$(echo -e "     \n     \n    \n    " | rofi -dmenu -config /home/altindas/.config/rofi/power.rasi -lines 5 -eh 2 -padding 850 -font "SF Pro Display 18" -p "                               Power Menu")

if [[ $chosen = "     " ]]; then
  ui=$(echo -e "           \n    " | rofi -dmenu -config /home/altindas/.config/rofi/power.rasi -lines 2 -eh 2 -padding 850 -font "SF Pro Display 18" -p "                               Logout ?")
  if [[ $ui = "           " ]]; then
  i3-msg exit
fi
elif [[ $chosen = "    " ]]; then
  ui=$(echo -e "           \n    " | rofi -dmenu -config /home/altindas/.config/rofi/power.rasi -lines 2 -eh 2 -padding 850 -font "SF Pro Display 18" -p "                               Shutdown ?")
  if [[ $ui = "           " ]]; then
  systemctl poweroff
fi
elif [[ $chosen = "    " ]]; then
  ui=$(echo -e "           \n    " | rofi -dmenu -config /home/altindas/.config/rofi/power.rasi -lines 2 -eh 2 -padding 850 -font "SF Pro Display 18" -p "                               Reboot ?")
  if [[ $ui = "           " ]]; then
  systemctl reboot
fi	
elif [[ $chosen = "     " ]]; then
  ui=$(echo -e "           \n    " | rofi -dmenu -config /home/altindas/.config/rofi/power.rasi -lines 2 -eh 2 -padding 850 -font "SF Pro Display 18" -p "                               Suspend ?")
  if [[ $ui = "           " ]]; then
  betterlockscreen -l dim  & systemctl suspend
fi	
elif [[ $chosen = "Hibernate" ]]; then
	systemctl hibernate
elif [[ $chosen = "Hybrid-sleep" ]]; then
	systemctl hibernate
elif [[ $chosen = "Suspend-then-hibernate" ]]; then
	systemctl suspend-then-hibernate
fi 
