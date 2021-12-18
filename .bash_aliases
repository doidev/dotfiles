alias :q='exit'
alias android=' ~/Downloads/android-studio/bin/studio.sh'
alias bashc='nvim ~/.bash_aliases'
alias bashr='source ~/.bashrc'
alias c='clear'
alias cc='clear'
alias ccc='clear'
alias checksize='sudo du -sh /home/sen/'
alias cp='cp -i'
alias dev='DEV_PORT=4000 yarn dev'
alias devship='DEV_PORT=4000 yarn dev'
alias dev4000='DEV_PORT=4000 yarn dev'
alias devsupply='DEV_PORT=4010 yarn dev'
alias dev4010='DEV_PORT=4010 yarn dev'
alias devinternal='DEV_PORT=4020 yarn dev'
alias dev4020='DEV_PORT=4020 yarn dev'
alias devx='DEV_PORT=4030 yarn dev'
alias dev4030='DEV_PORT=4030 yarn dev'
alias dev4040='DEV_PORT=4040 yarn dev'
alias dev5000='DEV_PORT=5000 yarn dev'
alias devhugo='hugo server -D'
alias desktop='cd ~/Desktop/'
alias document='cd ~/Documents/'
alias download='cd ~/Downloads/'
alias e='exit'
alias egrep='egrep --color=auto'
# alias esc='xmodmap -e "clear Lock" -e "keysym Caps_Lock = Escape"'
alias f='find . |grep '
alias fgrep='fgrep --color=auto'
alias ga='git add .'
alias gb='git branch'
alias gc='git commit --no-verify -m'
alias gca='git commit --no-verify --amend -m'
alias gcm='git checkout master && git pull origin master'
alias gl='git log --oneline --graph'
alias googledrive='XDG_CURRENT_DESKTOP=GNOME gnome-control-center'
alias gp='git push origin'
alias gpf='git push -f origin'
alias gr='git remote -v'
alias grep='grep --color=auto'
alias gs='git status'
alias h='history|grep'
alias ip='curl https://ipinfo.io/ip'
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'
alias ln='ln -i'
alias ls='ls --color=auto'
alias mv='mv -i'
alias nginxconfig='cd /etc/nginx/sites-available'
alias nginxfolder='cd /var/www/'
alias picomc='nvim ~/.config/picom/picom.conf'
alias picomstart='/home/sen/.config/picom/autoblurpicom.sh'
alias postman='~/Postman/app/Postman'
alias reboot='sudo /sbin/reboot'
alias sshvps='ssh user@168.138.19.222'
alias system='inxi -Fxz'
alias t='tmux'
alias genssh='ssh-keygen -t rsa'
alias tks='tmux kill-session -t'
alias tls='tmux ls'
alias tmuxc='nvim ~/.tmux.conf'
alias tmuxr='tmux source-file ~/.tmux.conf'
alias tr='tmux a -t'
alias ts='tmux new -s'
alias update='sudo apt update'
alias upgrade='sudo apt upgrade -y'
alias vim='nvim'
alias vpsspeed='sudo curl -Lso- tocdo.net | bash'
alias xampp='sudo /opt/lampp/manager-linux-x64.run'
alias zshc='nvim ~/.zshrc'
alias zshr='source ~/.zshrc && clear'
alias sudosu="sudo su"
alias sudosen="su - sen"
alias node16="nvm use 16.10.0"
alias node14="nvm use 14.17.6"
alias nvmi16="nvm install 16.10.0"
alias nvmls="nvm ls" #entry in green, with an arrow on the left, is the current version in use
alias n16="n 16.10.0"
alias n14="n 14.17.6"

# ibus-bamboo
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
# export bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# install golang MUST
export PATH=$PATH:/usr/local/go/bin



