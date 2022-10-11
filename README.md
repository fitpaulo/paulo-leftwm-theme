# LeftWM themes - paulotech

This is a my take on a one-dark theme with influences by many other authors of different components.

Currently the left side of polybar is not clickable.  Also, it is not displaying the current Layout.

TODO:
  * Update polybar to display current layout
  * Update polybar to include applications on the left (maybe)
  * Make Tags clickable (maybe)

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
sudo apt install nala
```  

### Credit
This theme was originally adapted from [Arch One Dark](https://github.com/jamesbaker1901/leftwm-arch-one-dark)

The picom config for rounded corners came from [Gruvbox Material Rounded](https://github.com/niconicoj/Leftwm-Gruvbox-Material-Rounded)
This is also where the polybar config comes from.

There are numerous dotfiles that I grabbed from various folks to set up dunst and similar as well.
