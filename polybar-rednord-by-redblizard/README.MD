* Developer RedBlizard

 # This polybar config is for now BSPWM ONLY !!!

 **ttf-nerd-fonts-symbols-2048-em are needed for showing the icons in the bar**

 **how to install the nerd fonts:**

 `yay -S nerd-fonts-complete

 **Place the following in your bspwmrc file**

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
 ```

![polybar-colored-icons](https://raw.githubusercontent.com/EndeavourOS-Community-Editions/polybar/main/polybar-rednord-by-redblizard/screenshots/polybar-  colored-icons.png)

![polybar-dimmed-icons](https://raw.githubusercontent.com/EndeavourOS-Community-Editions/polybar/main/polybar-rednord-by-redblizard/screenshots/polybar-    dimmed-icons.png)
