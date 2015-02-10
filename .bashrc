# Add nano as default editor
export EDITOR=vim
export TERMINAL=terminator
export BROWSER=firefox
export TERM=xterm-256color
# Gtk themes 
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

#for rubygems
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

alias ls='ls --color=auto'

# Custom bash prompt via kirsle.net/wizards/ps1.html
export PS1="\[$(tput setaf 4)\]\u\[$(tput setaf 7)\]@\[$(tput setaf 4)\]\h\[$(tput setaf 7)\][\[$(tput setaf 3)\]\W\[$(tput setaf 7)\]]:\[$(tput sgr0)\]"

set -o vi
set show-mode-in-prompt on
