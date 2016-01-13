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
mkdir -p $XDG_DATA_DIR/zsh
mkdir -p $XDG_DATA_DIR/zsh/zkbd

# tmuxinator still has no XDG support
ln -s ${0:A}/tmuxinator ~/.tmuxinator

# create directories for zsh
mkdir -p $XDG_CACHE_HOME/vim/{backup,swap,undo}
mkdir -p $XDG_DATA_DIR/vim/bundle

# python
mkdir -p $XDG_CACHE_HOME/python-eggs

# ccache
mkdir -p $XDG_CACHE_HOME/ccache
