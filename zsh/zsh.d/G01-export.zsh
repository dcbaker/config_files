# XDG variables
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_DIR=$HOME/.local/share
export XDG_DATA_DIRS=/usr/local/share:/usr/share
export XDG_CONFIG_DIRS=/etc/xdg

# Make various programs play nice with XDG
export HISTFILE=$XDG_DATA_DIR/zsh/history
export TIGRC_USER=$XDG_CONFIG_HOME/tig/tigrc
export TMUX_TEMPDIR=$XDG_RUNTIME_DIR/tmux
export PYLINTRC=$XDG_CONFIG_HOME/pylint/pylintrc
export PYTHON_EGG_CACHE="$XDG_CACHE_HOME"/python-eggs
export CCACHE_CONFIGPATH=$XDG_CONFIG_HOME/ccache/ccache.conf
export NOTMUCH_CONFIG=$XDG_CONFIG_HOME/notmuch/notmuch-config
export LESSHISTFILE=$XDG_DATA_DIR/less/history

# System sepcific variables
export EDITOR="/usr/bin/nvim"
export TERM="screen-256color"
export PATH="$HOME/.local/bin:/lib/ccache/bin:$PATH"
export GOPATH="$HOME/golang"

# vim: ft=sh
