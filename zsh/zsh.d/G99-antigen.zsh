# Initial configuraiton {{{1
# Tell Anitgen to use XDG paths
export ADOTDIR=$XDG_DATA_HOME/zsh/bundle/
export ANTIGEN_LOCK=$XDG_RUNTIME_DIR/zsh-antigen.lock

# Load antigen
source $XDG_DATA_HOME/zsh/bundle/antigen.git/antigen.zsh

# Install bundles {{{1
# Activate frameworks {{{2
antigen use oh-my-zsh

# Install Bundles {{{2
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle Schnouki/git-annex-zsh-completion
antigen bundle pyenv
antigen bundle tmuxinator

# Theme {{{2
#export POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k/powerlevel9k.zsh-theme
#antigen theme bhilburn/powerlevel9k

# vim: foldmethod=marker
