alias ls="ls --color=auto -S"
alias grep="grep --color=always"
alias less="less -RS"

# some sudo aliases
alias svim="sudo -E vim"
alias sumv="sudo mv -i"
alias surm="sudo rm -i"
alias sucp="sudo cp"
alias suls="sudo ls"
alias suless="sudo less -S"
alias sucat="sudo cat"

alias usystemctl="systemctl --user"

# Force ssh-add to use a gui agent
alias ssh-add="ssh-add </dev/null"

# xdg workaround aliases
alias tmux="tmux -f $XDG_CONFIG_HOME/tmux/tmux.conf"
alias pylint="pylint --rcfile $XDG_CONFIG_HOME/pylint/pylintrc"

# vim: ft=sh
