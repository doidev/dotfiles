1. Install [neovim (nvim)](https://neovim.io) then install [vim-plug](https://github.com/junegunn/vim-plug) to manage all the plug-in to transform vim from text editor to IDE (Intergrated Development Environment)
1. Install my favorite - Cascadia code font as [Link](https://ubuntu.pkgs.org/20.04/ubuntu-universe-amd64/fonts-cascadia-code_1911.21-1_all.deb.html)
1. Favorite layout keyboard is [Logitech Mk204](https://www.logitech.com/vi-vn/products/combos/mk240-minimalist-keyboard-mouse.920-008202.html) layout 84 keystroke
1. Map CAPSLOCK key to ESC in Ubuntu as [Link](https://unix.stackexchange.com/questions/199266/how-to-permanently-remap-caps-lock-to-esc-in-x11) then `sudo vim /usr/share/X11/xkb/symbols/pc`or using gnome-tweak-tool as [Link](https://dev.to/yuyabu/how-to-use-caps-lock-key-as-esc-on-ubuntu-18-1g7l)
--- 
#### Notes:
General key bindings in nvim detail in `init.vim` file but I want to share some basic. 
- Map `leader` key to `spacebar` key
- Do not map key bindings of 3 (there) keystroke with `leader` key. For example: do not map like `nmap <leader>gh %` reason is speed of cursor could be delayed.

Consider install plug in `colorizer` it affectt to performance of vim


