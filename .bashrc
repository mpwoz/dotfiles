export TERM=xterm-256color

# Power management
alias po="sudo poweroff"

# Popup notification when a long process finishes.
# Usage: 
#    <long-running-process> && n
alias n="notify-send \"Job finished.\""

# Use emacs
alias e="emacsclient -t -a ''"
alias emacs="e"
alias vim="e"

# Editing dotfiles and automatically sourcing them
alias s='source ~/.bashrc'
alias vs='vi ~/src/dotfiles/.bashrc && s'

# ls aliases
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

#Turn off screensaver/power save
xset s off
xset -dpms

# bash history
# avoid duplicates in history
export HISTCONTROL=ignoredups:erasedups
# append history entries
shopt -s histappend
# After each command, save and reload history
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

