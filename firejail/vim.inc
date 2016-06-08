# All of the includes require to use vim or gvim

whitelist ${HOME}/.config/vim
whitelist ${HOME}/.local/share/vim/bundle
whitelist ${HOME}/.local/bin

read-only ${HOME}/.config/vim
read-only ${HOME}/.local/share/vim/bundle
read-only ${HOME}/.local/bin

# While it would be nice to be able to read this, there's just way too much
# private stuff in there potentially
blacklist ${HOME}/.cache/vim
