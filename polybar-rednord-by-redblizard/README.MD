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
![polybar-colored-icons](https://user-images.githubusercontent.com/108489214/207673902-bda87d97-36db-4378-8513-346a08da8754.png)

![polybar-dimmed-icons](https://user-images.githubusercontent.com/108489214/207673951-ee285a64-4ac6-4f77-a229-ca446c871644.png)


