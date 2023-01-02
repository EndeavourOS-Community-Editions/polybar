* Developer RedBlizard

 # This polybar config is for BSPWM and i3 !!!

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

**important instruction for dimmed and colored icons on workspaces**

**You need to edit the modules.ini file in here you will find the bspwm module**

 ```
If you want to use the dimmed icons on the workspaces you dont have to change anything.

leaf the following uncommented

# dimmed bspwm polybar icons
ws-icon-0 = "I;%{T1}  %{T-}"
ws-icon-1 = "II;%{T1}  %{T-}"
ws-icon-2 = "III;%{T1}  %{T-}"
ws-icon-3 = "IV;%{T1}  %{T-}"
ws-icon-4 = "V;%{T1}  %{T-}"
ws-icon-5 = "VI;%{T1}  %{T-}"
ws-icon-6 = "VII;%{T1}  %{T-}"
ws-icon-7 = "VIII;%{T1}  %{T-}"

label-occupied = %icon%

If you want to use the colored icons on the workspaces do the following.

First thing to do is place a comment ; in the beginning of each line in the dimmed part.

And then uncomment the following see below

;ws-icon-0 = I;%{F#d8dee9}
;ws-icon-1 = II;%{F#EBCB8B}  
;ws-icon-2 = III;%{F#BF616A}
;ws-icon-3 = IV;%{F#A3BE8C}    
;ws-icon-4 = V;%{F#81a1c1}
;ws-icon-5 = VI;%{F#88C0D0}
;ws-icon-6 = VII;%{F#B48EAD}
;ws-icon-7 = VIII;%{F#989cff}

;label-occupied = %icon%

Now you will have the colored icons on the workspaces enjoy.
```
**important instructions colors.ini and pipewire/volume module**
``` 
Open the colors.ini file find the color for the background and chnage the color from #d92e3440 to #800A0E14
This is already prepared in the colors.ini file.

First fully remove pulseaudio install pipewire-pulse.
And place this command in your bspwmrc file: ~/.config/bspwm/scripts/polybar-reload.sh
This is because otherwise the pipewire-module will not load correctly during startup and Polybar needs a reload for it to work.
```

![polybar-colored-icons](https://user-images.githubusercontent.com/108489214/207673902-bda87d97-36db-4378-8513-346a08da8754.png)



![polybar-dimmed-icons](https://user-images.githubusercontent.com/108489214/207673951-ee285a64-4ac6-4f77-a229-ca446c871644.png)



![polybar i3](https://user-images.githubusercontent.com/108489214/210162917-d2232e0e-7d6d-48f3-bac0-e95206e81529.png)


