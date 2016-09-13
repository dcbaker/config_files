include /etc/firejail/dropbox.profile
include ${HOME}/.config/firejail/system.inc

name dropbox

mkdir ${HOME}/.local/sandbox
mkdir ${HOME}/.local/sandbox/dropbox
mkdir ${HOME}/.local/sandbox/dropbox/Dropbox

private ${HOME}/.local/sandbox/dropbox
private-dev
