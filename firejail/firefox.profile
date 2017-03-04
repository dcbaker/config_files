# Extended firefox profile to include extra stuff

include /etc/firejail/firefox.profile

mkdir ~/.local/sandbox/firefox
private ~/.local/sandbox/firefox

mkdir ~/.cache
mkdir ~/.cache/itsalltext
whitelist ~/.cache/itsalltext
