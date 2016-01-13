# XDG variables
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_DIR=$HOME/.local/share
export XDG_DATA_DIRS=/usr/local/share:/usr/share
export XDG_CONFIG_DIRS=/etc/xdg

# Make various programs play nice with XDG
export HISTFILE=$XDG_DATA_DIR/zsh/history

# System sepcific variables
export EDITOR="/usr/bin/vim"
export TERM="screen-256color"
export PATH="$(/usr/bin/ruby -rubygems -e 'puts Gem.user_dir')/bin:/usr/lib/ccache/bin:/sbin:/usr/sbin:$PATH:$HOME/.local/bin"
export GOPATH="$HOME/golang"

# vim: ft=sh
