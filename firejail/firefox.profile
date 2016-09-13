# Extended firefox profile to include extra stuff
noblacklist ~/.cache/itsalltext
include /etc/firejail/firefox.profile

mkdir ~/.cache
mkdir ~/.cache/itsalltext
whitelist ~/.cache/itsalltext

include ${HOME}/.config/firejail/vim.inc
