# windows save on (.\AppData\Roaming\alacritty\.alacritty.yml)

```shell
font:
  size: 15
  normal:
    family: Hack Nerd Font Mono
shell:
  program: fish
window:
  opacity: 0.98
  blur: 0.2
  title: Alacrity
  dynamic_title: true
  decorations: full


#theme
# The definition of color schemes.
schemes:
  gruvbox_material_hard_dark: &gruvbox_material_hard_dark
    primary:
      background: '0x1d2021'
      foreground: '0xd4be98'
    normal:
      black:   '0x32302f'
      red:     '0xea6962'
      green:   '0xa9b665'
      yellow:  '0xd8a657'
      blue:    '0x7daea3'
      magenta: '0xd3869b'
      cyan:    '0x89b482'
      white:   '0xd4be98'
    bright:
      black:   '0x32302f'
      red:     '0xea6962'
      green:   '0xa9b665'
      yellow:  '0xd8a657'
      blue:    '0x7daea3'
      magenta: '0xd3869b'
      cyan:    '0x89b482'
      white:   '0xd4be98'
  gruvbox_material_medium_dark: &gruvbox_material_medium_dark
    primary:
      background: '0x282828'
      foreground: '0xd4be98'
    normal:
      black:   '0x3c3836'
      red:     '0xea6962'
      green:   '0xa9b665'
      yellow:  '0xd8a657'
      blue:    '0x7daea3'
      magenta: '0xd3869b'
      cyan:    '0x89b482'
      white:   '0xd4be98'
    bright:
      black:   '0x3c3836'
      red:     '0xea6962'
      green:   '0xa9b665'
      yellow:  '0xd8a657'
      blue:    '0x7daea3'
      magenta: '0xd3869b'
      cyan:    '0x89b482'
      white:   '0xd4be98'
  gruvbox_material_soft_dark: &gruvbox_material_soft_dark
    primary:
      background: '0x32302f'
      foreground: '0xd4be98'
    normal:
      black:   '0x45403d'
      red:     '0xea6962'
      green:   '0xa9b665'
      yellow:  '0xd8a657'
      blue:    '0x7daea3'
      magenta: '0xd3869b'
      cyan:    '0x89b482'
      white:   '0xd4be98'
    bright:
      black:   '0x45403d'
      red:     '0xea6962'
      green:   '0xa9b665'
      yellow:  '0xd8a657'
      blue:    '0x7daea3'
      magenta: '0xd3869b'
      cyan:    '0x89b482'
      white:   '0xd4be98'
  gruvbox_material_hard_light: &gruvbox_material_hard_light
    primary:
      background: '0xf9f5d7'
      foreground: '0x654735'
    normal:
      black:   '0x654735'
      red:     '0xc14a4a'
      green:   '0x6c782e'
      yellow:  '0xb47109'
      blue:    '0x45707a'
      magenta: '0x945e80'
      cyan:    '0x4c7a5d'
      white:   '0xf2e5bc'
    bright:
      black:   '0x654735'
      red:     '0xc14a4a'
      green:   '0x6c782e'
      yellow:  '0xb47109'
      blue:    '0x45707a'
      magenta: '0x945e80'
      cyan:    '0x4c7a5d'
      white:   '0xf2e5bc'
  gruvbox_material_medium_light: &gruvbox_material_medium_light
    primary:
      background: '0xfbf1c7'
      foreground: '0x654735'
    normal:
      black:   '0x654735'
      red:     '0xc14a4a'
      green:   '0x6c782e'
      yellow:  '0xb47109'
      blue:    '0x45707a'
      magenta: '0x945e80'
      cyan:    '0x4c7a5d'
      white:   '0xeee0b7'
    bright:
      black:   '0x654735'
      red:     '0xc14a4a'
      green:   '0x6c782e'
      yellow:  '0xb47109'
      blue:    '0x45707a'
      magenta: '0x945e80'
      cyan:    '0x4c7a5d'
      white:   '0xeee0b7'
  gruvbox_material_soft_light: &gruvbox_material_soft_light
    primary:
      background: '0xf2e5bc'
      foreground: '0x654735'
    normal:
      black:   '0x654735'
      red:     '0xc14a4a'
      green:   '0x6c782e'
      yellow:  '0xb47109'
      blue:    '0x45707a'
      magenta: '0x945e80'
      cyan:    '0x4c7a5d'
      white:   '0xe6d5ae'
    bright:
      black:   '0x654735'
      red:     '0xc14a4a'
      green:   '0x6c782e'
      yellow:  '0xb47109'
      blue:    '0x45707a'
      magenta: '0x945e80'
      cyan:    '0x4c7a5d'
      white:   '0xe6d5ae'

```
## for new version alacritty 0.13.0
create file as **alacritty.toml** with the following info

```shell
[[colors.indexed_colors]]
color = "#FAB387"
index = 16

[[colors.indexed_colors]]
color = "#F5E0DC"
index = 17

[colors.bright]
black = "#585B70"
blue = "#89B4FA"
cyan = "#94E2D5"
green = "#A6E3A1"
magenta = "#F5C2E7"
red = "#F38BA8"
white = "#A6ADC8"
yellow = "#F9E2AF"

[colors.cursor]
cursor = "#F5E0DC"
text = "#1E1E2E"

[colors.dim]
black = "#45475A"
blue = "#89B4FA"
cyan = "#94E2D5"
green = "#A6E3A1"
magenta = "#F5C2E7"
red = "#F38BA8"
white = "#BAC2DE"
yellow = "#F9E2AF"

[colors.hints.end]
background = "#A6ADC8"
foreground = "#1E1E2E"

[colors.hints.start]
background = "#F9E2AF"
foreground = "#1E1E2E"

[colors.normal]
black = "#45475A"
blue = "#89B4FA"
cyan = "#94E2D5"
green = "#A6E3A1"
magenta = "#F5C2E7"
red = "#F38BA8"
white = "#BAC2DE"
yellow = "#F9E2AF"

[colors.primary]
background = "#1E1E2E"
bright_foreground = "#CDD6F4"
dim_foreground = "#CDD6F4"
foreground = "#CDD6F4"

[colors.search.focused_match]
background = "#A6E3A1"
foreground = "#1E1E2E"

[colors.search.matches]
background = "#A6ADC8"
foreground = "#1E1E2E"

[colors.selection]
background = "#F5E0DC"
text = "#1E1E2E"

[colors.vi_mode_cursor]
cursor = "#B4BEFE"
text = "#1E1E2E"

[env]
TERM = "xterm-256color"

[font]
size = 18

[font.bold]
family = "JetBrainsMono Nerd Font"
style = "Bold"

[font.italic]
family = "JetBrainsMono Nerd Font"
style = "Italic"

[font.normal]
family = "JetBrainsMono Nerd Font"
style = "Regular"

[shell]
program = "/opt/homebrew/bin/fish"

[window]
blur = true
dynamic_title = true
opacity = 0.8

[window.padding]
x = 2
y = 8
```
