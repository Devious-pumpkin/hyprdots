#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias sl='ls --color=auto'
alias grep='grep --color=auto'
alias autoremove='sudo pacman -Rns $(pacman -Qdtq) 2>/dev/null || echo "Nothing to remove"'
alias imdonneywiththefunny='poweroff'
alias shadowsoc-up='sudo sslocal -c ~/.config/shadowsocket/config.json'
alias go-go-sshagent='eval $(ssh-agent) && ssh-add ~/.ssh/gitpub'

if uwsm check may-start; then
  exec uwsm start hyprland.desktop
fi
