# many of these are debian specific

export EDITOR="/usr/bin/vim"
export TERM="screen-256color"
export PATH="$(/usr/bin/ruby -rubygems -e 'puts Gem.user_dir')/bin:/usr/lib/ccache/bin:/sbin:/usr/sbin:$PATH:$HOME/.local/bin"
export PKG_CONFIG_PATH="/usr/local/lib/x86_64-linux-gnu/pkgconfig/:$PKG_CONFIG_PATH"
export SSH_ASKPASS="/usr/bin/ksshaskpass"
export LIBGL_DRIVERS_PATH="/usr/local/lib64/dri:/usr/local/lib32/dri:$LIBGL_DRIVERS_PATH"
export GBM_DRIVERS_PATH=$LIBGL_DRIVERS_PATH
export LD_LIBRARY_PATH="/usr/local/lib32:/usr/local/lib64:$LD_LIBRARY_PATH"
export GOPATH="$HOME/golang"
export SOURCE_DIR="$HOME/src"

# vim: ft=sh
