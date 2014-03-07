alias ls="ls --color=auto -S"
alias grep="grep --color=always"
alias less="less -RS"

# some sudo aliases
function svim { vim sudo:${1}; } # This assumes the vim sudo plugin
alias sumv="sudo mv -i"
alias surm="sudo rm -i"
alias sucp="sudo cp"
alias suls="sudo ls"
alias suless="sudo less -S"
alias sucat="sudo cat"

# Force ssh-add to use a gui agent
alias ssh-add="ssh-add </dev/null"

# vim: ft=sh
