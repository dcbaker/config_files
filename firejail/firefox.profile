# Extended firefox profile to include extra stuff
include /etc/firejail/firefox.profile

whitelist ~/.cache/itsalltext
include ${HOME}/.config/firejail/vim.inc
