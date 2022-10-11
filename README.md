# LeftWM themes - paulotech

This is a my take on a one-dark theme with influences by many other authors of different components.

Currently the left side of polybar is not clickable.  Also, it is not displaying the current Layout.

I don't include install eww below as I'm not actually using it currently.

I recommed using up.polybar ```ln -s up.polybar up```

TODO:
  * Update polybar to include application launcher like the arch one dark theme (maybe)
  * Make an eww Power Menu
  * Add rofi config to theme
  * Change tag names to something fun like greek letters (ala garuda linux qtile config)
    * This probably belongs in the main leftwm README

## Requirements
* [picom](https://wiki.archlinux.org/title/picom)
* [dunst](https://wiki.archlinux.org/title/dunst)
* [polybar](https://wiki.archlinux.org/title/Polybar)

Install them with (Arch):
```
paru picom dunst polybar
```

Install them with (Fedora):
```
sudo dnf install picom dunst polybar
```

Install them with (Debian/Ubuntu):
Note: This is a guess, I have not set this up on Ubuntu/Debian
```
sudo nala install picom dunst polybar
```

If you don't have nala
```
sudo apt install nala  # Thank me later
```  

### Credit
This theme was originally adapted from [Arch One Dark](https://github.com/jamesbaker1901/leftwm-arch-one-dark)

The picom and polybar configs primarily came from [Gruvbox Material Rounded](https://github.com/niconicoj/Leftwm-Gruvbox-Material-Rounded)

The Eww stuff comes directly from [Arcofancy Fancy](https://github.com/arcolinux/arcolinux-leftwm-theme-fancy)

There are numerous dotfiles that I grabbed from various folks to set up dunst and similar as well.
