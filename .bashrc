#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

PS1='\[\e[38;5;15m\]$(date +"%I:%M %p") \[\e[1m\e[38;5;14m\] 󰣇 \[\e[38;5;11m\]\w\[\e[38;5;10m\] 󰅂\[\e[0m\e[38;5;15m\] '

export SINK=155

# add aliases if ~/.aliases exists
if [ -f "$HOME/.aliases" ] ; then
    source ~/.aliases
fi

# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION


disfetch
