#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias v='nvim'
export TERM='xterm-256color'
#alias ssh='kitty +kitten ssh'

PS1='\[\e[38;5;45m\]\u\[\e[38;5;45m\]@\[\e[38;5;45m\]\h\[\e[0m\]:\[\e[38;5;38m\]\w\[\e[0m\]$ '

HYPRSHOT_DIR='/home/tn/media/screenshots/'
