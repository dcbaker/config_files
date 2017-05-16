# Initial configuraiton {{{1
# Tell Anitgen to use XDG paths
export ADOTDIR=$XDG_DATA_HOME/zsh/bundle/
export ANTIGEN_LOCK=$XDG_RUNTIME_DIR/zsh-antigen.lock

# Load antigen
source $XDG_DATA_HOME/zsh/bundle/antigen.git/antigen.zsh

# Install bundles {{{1
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle Schnouki/git-annex-zsh-completion

# Cleanup {{{1
# Tell antigen we're done
antigen apply

# vim: foldmethod=marker
