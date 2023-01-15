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

![Polybar RedNordAlternative](https://user-images.githubusercontent.com/108489214/212528128-e9b32c4f-9d3f-4375-8b39-bfaad61c0516.png)

![Polybar RedNordAlternative-minimal](https://user-images.githubusercontent.com/108489214/212529211-69f4ce52-ed9a-4f99-bed1-5f5b8bb19808.png)




