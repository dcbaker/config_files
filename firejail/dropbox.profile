# Persistent global definitions go here
include /etc/firejail/globals.local

# This file is overwritten during software install.
# Persistent customizations should go in a .local file.
include /etc/firejail/dropbox.local

# dropbox profile
noblacklist ~/.config/autostart
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc

caps
nonewprivs
noroot
protocol unix,inet,inet6
seccomp

blacklist /sys
read-only /proc

name dropbox

mkdir ${HOME}/.local/sandbox
mkdir ${HOME}/.local/sandbox/dropbox

private ${HOME}/.local/sandbox/dropbox
private-dev

mkdir ~/Dropbox
whitelist ~/Dropbox
mkdir ~/.dropbox
whitelist ~/.dropbox
mkdir ~/.dropbox-dist
whitelist ~/.dropbox-dist
