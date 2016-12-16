export TERM=xterm-256color

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
# Select a screen region, save to png file, copy contents to clipboard.
snipf() {
  FILENAME=$1
  scrot -s $FILENAME
  xclip -selection clipboard -t image/png -i $FILENAME
}
alias snip=snipf
# Copy a png's data to clipboard
alias pngclip="xclip -selection clipboard -t image/png -i" # Usage: pngclip [filename.png]

# Copy current dir to clipboard
alias pwdclip="pwd | xclip -selection clipboard"
alias clipwd="pwdclip"
