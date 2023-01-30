# Polybar config to i3 and BSPWM
Developer: bitterhalt

![2023-01-30_23-18](https://user-images.githubusercontent.com/95308907/215597786-8b5056c0-2895-49a5-ae8e-e7c64007f9c5.png)

![2023-01-30_23-16](https://user-images.githubusercontent.com/95308907/215598050-73bec5de-763d-49a5-88dc-88c20db34041.png)


## Requirements

Polybar

JetBrains Mono Nerd Font

You can also edit file and use any Nerd font that suits you

You must edit launch.sh according to your WM.

For i3: use line:
`polybar i3 2>&1 | tee -a /tmp/polybar.log & disown`

For BSPWM:
`polybar bspwm 2>&1 | tee -a /tmp/polybar.log & disown`

