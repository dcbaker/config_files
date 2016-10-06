#!/bin/zsh

# Copyright 2016 Dylan Baker

# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the "Software"),
# to deal in the Software without restriction, including without limitation
# the rights to use, copy, modify, merge, publish, distribute, sublicense,
# and/or sell copies of the Software, and to permit persons to whom the
# Software is furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included
# in all copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
# OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
# IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
# DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
# TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE
# OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

source zsh/zsh.d/G01-export.zsh

# Solve the zsh bootstrap problem locally, since every user might not what this
# setup.
echo "export ZDOTDIR=$XDG_CONFIG_HOME/zsh" > ~/.zshenv

# Create directoires for zsh
mkdir -p $XDG_DATA_HOME/zsh
mkdir -p $XDG_DATA_HOME/zsh/zkbd
mkdir -p $XDG_DATA_HOME/zsh/completions

# tmuxinator still has no XDG support
ln -sf $XDG_CONFIG_HOME/tmuxinator ~/.tmuxinator

# python
mkdir -p $XDG_CACHE_HOME/python-eggs

# ccache
mkdir -p $XDG_CACHE_HOME/ccache

# less
mkdir -p $XDG_DATA_HOME/less

# git
mkdir -p $XDG_DATA_HOME/git/templates

# nvim
mkdir -p $XDG_CACHE_HOME/nvim/{backup,swap,undo}

# try to get vundle, you'll need git
if [[ ! -d $XDG_DATA_DIR/nvim/bundle/Vundle.vim ]]; then
    git clone https://github.com/VundleVim/Vundle.vim.git $XDG_DATA_DIR/nvim/bundle/Vundle.vim 1>/dev/null
    nvim +PluginInstall +qall
fi

# Add some other helpers
mkdir -p $XDG_DATA_HOME/repos
mkdir -p $HOME/.local/bin/
if [[ ! -d $XDG_DATA_HOME/repos/jsontidy ]]; then
    git clone https://github.com/dcbaker/jsontidy $XDG_DATA_HOME/repos/jsontidy 1>/dev/null
    ln -s $XDG_DATA_HOME/repos/jsontidy/jsontidy.py $HOME/.local/bin/
fi
if [[ ! -d $XDG_DATA_HOME/repos/git-ck ]]; then
    git clone https://github.com/dcbaker/git-ck $XDG_DATA_HOME/repos/git-ck 1>/dev/null
    ln -s $XDG_DATA_HOME/repos/git-ck/git-ck $HOME/.local/bin/
    ln -s $XDG_DATA_HOME/repos/git-ck/zsh/_git-ck $XDG_DATA_HOME/zsh/completions/
fi
if [[ ! -d $XDG_DATA_DIR/repos/pip-update ]]; then
    git clone https://github.com/dcbaker/pip-update.git $XDG_DATA_DIR/repos/pip-update
    ln -s $XDG_DATA_DIR/repos/pip-update/pip-update $HOME/.local/bin/
fi

if [[ ! -d $HOME/.pyenv ]]; then
    curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash
fi
