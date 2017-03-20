export TERM=xterm-256color

# automatically create/attach to "dev" tmux session on ssh
#function ssht () {/usr/bin/ssh -t $@ "tmux new -A dev";}

# Power management
alias po="sudo poweroff"

# Popup notification when a long process finishes.
# Usage:
#    <long-running-process> && n
alias n="notify-send \"Job finished.\""

# Use emacs
alias emacs="emacs -nw"
alias e="emacs"

# Editing dotfiles and automatically sourcing them
alias s='source ~/.bashrc; source ~/.bash_aliases'
alias vs='vim -O ~/.bashrc ~/src/dotfiles/.bashrc && s'
alias va='vim ~/.bash_aliases && s'
alias vimcfg='vim ~/src/dotfiles/.vimrc'

# ls aliases
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias sl=ls

# ag smart case search
alias ag='ag -S'

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

# Screenshotting tools
# https://faq.i3wm.org/question/202/what-do-you-guys-use-for-printscreen.1.html
# copy screen region to clipboard
alias snip="scrot -s -e 'mv \$f /tmp/ && xclip -selection clipboard -t image/png -i /tmp/\$f'"
# copy whole screen to clipboard
alias screenshot="scrot -e 'mv \$f /tmp/ && xclip -selection clipboard -t image/png -i /tmp/\$f'"
# Copy a png's data to clipboard
alias pngclip="xclip -selection clipboard -t image/png -i" # Usage: pngclip [filename.png]

# Copy current dir to clipboard
alias pwdclip="pwd | xclip -selection clipboard"
