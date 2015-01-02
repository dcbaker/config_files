# If we have powerline use that, otherwise go ahead and set a bunch of settings
if [ -x $(which powerline &>/dev/null) ]; then
	powerline-daemon -q  # Really this should probably be replaced with a systemd user daemon
	source $HOME/.local/lib64/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
	return 0
fi

# Use color in the prompt
autoload -U colors && colors

# use the zsh built-in vcs
autoload -Uz vcs_info
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' enable git hg

# vcs-git config
zstyle ':vcs_info:git*' formats "%{$fg[magenta]%}%s%{$fg_bold[white]%}| %{$fg[blue]%}%r:%{$fg[cyan]%}(%b) %{$fg[yellow]%}%c%u%{$reset_color%}"
zstyle ':vcs_info:git*' actionformats "%%{$fg[magenta]%}%s%{$fg_bold[white]%}| %{$fg[blue]%}%r:%{$fg[cyan]%}(%b) %{$fg[red]%}%a%{$reset_color%}"

# vcs-hg config
zstyle ':vcs_info:hg*' formats "%{$fg[magenta]%}%s%{$fg_bold[white]%}| %{$fg[blue]%}%r:%{$fg[cyan]%}(%b) %{$fg[yellow]%}%c%u%{$reset_color%}"
zstyle ':vcs_info:hg*' actionformats "%%{$fg[magenta]%}%s%{$fg_bold[white]%}| %{$fg[blue]%}%r:%{$fg[cyan]%}(%b) %{$fg[red]%}%a%{$reset_color%}"

# Set the precommand
precmd() {
	vcs_info # Refresh the version control info

    # Truncate the path if it's too long.
	local TERMWIDTH
    (( TERMWIDTH = ${COLUMNS} - 5 ))

    local promptsize=${#${(%):-(%n@%m)-}}
    local pwdsize=${#${(%):-(%~)-}}

    if [[ "$promptsize + $pwdsize" -gt $TERMWIDTH ]]; then
		(( PR_PWDLEN = $TERMWIDTH - $promptsize ))
		PR_FILLBAR=""
    else
		# The 1 here pads things properly vs PR_PWDLEN
		PR_FILLBAR="\${(l.(($TERMWIDTH + 1 - ($promptsize + $pwdsize)))..-.)}"
		PR_PWDLEN=""
    fi
}

# Allow prompts to be subtituted
setopt prompt_subst

# Set the prompt
PROMPT='%{$fg[cyan]%}-%{$fg[blue]%}(\
%{$fg[green]%}%n%{$fg[blue]%}@%{$fg[green]%}$(hostname)%{$fg[blue]%})%{$fg[cyan]%}-\
%{$fg[blue]%}${(e)PR_FILLBAR}%{$reset_color%}\
%{$fg[cyan]%}-%{$fg[blue]%}(%{$fg[green]%}%$PR_PWDLEN<...<%~%<<%{$fg[blue]%})\
%{$fg[cyan]%}-%{$reset_color%}
%{$fg[blue]%}-%{$fg_bold[blue]%}>%{$fg[cyan]%}>%{$reset_color%} '
RPROMPT='${vcs_info_msg_0_}'

# vim: ft=zsh
