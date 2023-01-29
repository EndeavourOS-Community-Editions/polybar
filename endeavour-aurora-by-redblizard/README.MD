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

Now you can have also japanese numbers in polybar.

# japanese workspace icons in polybar
;ws-icon-0 = I;一
;ws-icon-1 = II;二
;ws-icon-2 = III;三
;ws-icon-3 = IV;四
;ws-icon-4 = V;五
;ws-icon-5 = VI;六
;ws-icon-6 = VII;七
;ws-icon-7 = VIII;八

For it the work you need to remove ; by the following lines:

;format = <label-state>
;label-focused = %{T5}%icon%%{T-}
;label-occupied = %{T5}%icon%%{T-}
;label-urgent = %{T5}%icon%%{T-}
;label-empty = %{T5}%icon%%{T-}

And you need to place a ; in front of the following lines:

format = <label-state> <label-mode>
label-focused = %icon%
label-occupied = %icon%
label-urgent = %icon%
label-empty = %icon%

And last dont forget to remove the ; by the japanese workspace icons and place a ; in front of the dimmed polybar icon lines in the module.ini file
Now you can enjoy the japanese numbers in your polybar. ( this option is not working yet in the i3 module.

```
**important instructions pipewire/volume module**
``` 
First fully remove pulseaudio install pipewire-pulse.
And place this command in your bspwmrc file: ~/.config/bspwm/scripts/polybar-reload.sh
This is because otherwise the pipewire-module will not load correctly during startup and Polybar needs a reload for it to work.
```
![29-01-2023 15:30:47](https://user-images.githubusercontent.com/108489214/215334999-b23d3584-e853-4f77-9a03-47fd2124abf0.png)


