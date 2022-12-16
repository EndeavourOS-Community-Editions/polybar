# Polybar config to i3 and BSPWM
Developer: bitterhalt

![2022-12-15_17-24](https://user-images.githubusercontent.com/95308907/207900082-742f3622-843c-4941-8c71-4c10b8653d04.png)

## Requirements

Polybar

JetBrains Mono Nerd Font (Terminal Font Awesome should work too with symbols.

You can also edit file and use any Nerd font that suits you..)

You must edit launch.sh according to your WM.

For i3: use line:
`polybar i3 2>&1 | tee -a /tmp/polybar.log & disown`

For BSPWM:
`polybar bspwm 2>&1 | tee -a /tmp/polybar.log & disown`

