# many of these are debian specific

export EDITOR="/usr/bin/vim"
export TERM="screen-256color"
export PATH="$(/usr/bin/ruby -rubygems -e 'puts Gem.user_dir')/bin:/usr/lib/ccache/bin:/sbin:/usr/sbin:$PATH:$HOME/.local/bin"
export PKG_CONFIG_PATH="/usr/local/lib/x86_64-linux-gnu/pkgconfig/:$PKG_CONFIG_PATH"
export SSH_ASKPASS="/usr/bin/ksshaskpass"
export GOPATH="$HOME/golang"

# XDG variables
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_DIR=$HOME/.local/share
export XDG_DATA_DIRS=/usr/local/share:/usr/share
export XDG_CONFIG_DIRS=/etc/xdg

# vim: ft=sh
