include /etc/firejail/dropbox.profile

blacklist /sys
read-only /proc

name dropbox

mkdir ${HOME}/.local/sandbox
mkdir ${HOME}/.local/sandbox/dropbox
mkdir ${HOME}/.local/sandbox/dropbox/Dropbox

private ${HOME}/.local/sandbox/dropbox
private-dev
