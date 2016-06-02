export TERM=xterm-256color

alias po="sudo poweroff"

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias s='source ~/.bashrc'
alias vs='vim ~/.bashrc && s'

alias vim='emacs'

#Turn off screensaver/power save
xset s off
xset -dpms

# avoid duplicates
export HISTCONTROL=ignoredups:erasedups
# append history entries
shopt -s histappend
# After each command, save and reload history
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

