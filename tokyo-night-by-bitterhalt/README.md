# Polybar config to i3 and BSPWM
Developer: bitterhalt

![2022-12-06_17-07](https://user-images.githubusercontent.com/95308907/206008451-fd094781-36a8-47b9-9d1f-ec4871e9f67d.png)

## Requirements
Polybar

JetBrains Mono Nerd Font

You can also edit file and use any Nerd font that suits you

You must edit launch.sh according to your WM.

For i3: use line:
`polybar i3 2>&1 | tee -a /tmp/polybar.log & disown`

For BSPWM:
`polybar bspwm 2>&1 | tee -a /tmp/polybar.log & disown`




