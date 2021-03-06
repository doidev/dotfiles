## Summary picture
![nvim ecosystem](./alacritty-zsh-tmux-neovim.png)
---

Explain the coding flow
First, open `Alacrity` terminal then `zsh` will be auto loaded then type `t`, which we map `alias t='tmux'` in `~/.zshrc` to open `tmux` then press `prefix + ctrl + r` to `restore` the sessions we save already by command `prefix + ctrl + s` in setup tmux 


1. Install Alacritty terminal, then install alaccritty themes with command `sudo apt install alacritty-themes`. Run `alacritty-themes` to open list themes selection. 
1. Install zsh with command `sudo apt instal zsh` then set `zsh` as default shell with command `chsh -s $(which zsh)`, setup zsh at `~/.zshrc` included `alias`. Install oh-my-zsh theme [https://ohmyz.sh/](https://ohmyz.sh/), install [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md).
1. Install Tmux `sudo apt instal tmux`, create tmux config file `touch ~/.tmux.conf`. Install Tmux Plugin Manager (tpm) and install plugin is [tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect) to save session tmux for your projects folder and restore it once start up tmux even after shutdown computer.
1. Install [neovim (nvim)](https://neovim.io) then install [vim-plug](https://github.com/junegunn/vim-plug) to manage all the plug-in to transform vim from text editor to IDE (Intergrated Development Environment)
1. Install my favorite - Cascadia code font as [Link](https://ubuntu.pkgs.org/20.04/ubuntu-universe-amd64/fonts-cascadia-code_1911.21-1_all.deb.html)
1. Favorite layout keyboard is [Logitech Mk204](https://www.logitech.com/vi-vn/products/combos/mk240-minimalist-keyboard-mouse.920-008202.html) layout 84 keystroke
1. Map CAPSLOCK key to ESC in Ubuntu as [Link](https://unix.stackexchange.com/questions/199266/how-to-permanently-remap-caps-lock-to-esc-in-x11) then `sudo vim /usr/share/X11/xkb/symbols/pc`or using gnome-tweak-tool as [Link](https://dev.to/yuyabu/how-to-use-caps-lock-key-as-esc-on-ubuntu-18-1g7l). In Xubuntu add this command to session startup `xmodmap -e "clear Lock" -e "keysym Caps_Lock = Escape"`
1. When using nvim run command `:CocConfig` to auto create empty `cod-settings.json` in `~/.config/nvim/coc-settings.json`

--- 
#### Notes:
General key bindings in nvim detail in `init.vim` file but I want to share some basic. 
- Map `leader` key to `spacebar` key
- Do not map key bindings of 3 (there) keystroke with `leader` key.
> For example: do not map like `nmap <leader>gh %` reason is speed of cursor could be delayed.
- Do not install plug in `colorizer` it affectt to performance of vim. Install hexokinase [github](https://github.com/RRethy/vim-hexokinase)


