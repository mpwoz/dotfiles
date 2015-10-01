# virtualenv
export WORKON_HOME=~/Envs
#source /usr/local/bin/virtualenvwrapper.sh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.local/bin"

export TERM=xterm-256color


alias po="sudo poweroff"

alias hoogle="hoogle --count=15"

#Turn off screensaver/power save
xset s off
xset -dpms

# completion for stack (haskell)
eval "$(stack --bash-completion-script "$(which stack)")"

