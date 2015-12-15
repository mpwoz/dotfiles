export TERM=xterm-256color

alias po="sudo poweroff"

#Turn off screensaver/power save
#xset s off
#xset -dpms

# avoid duplicates
export HISTCONTROL=ignoredups:erasedups
# append history entries
shopt -s histappend
# After each command, save and reload history
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

