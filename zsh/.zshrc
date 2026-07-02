alias v='nvim'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias btw='fastfetch'
alias lvalgrind='valgrind -s --leak-check=full --track-origins=yes --log-file=valgrind.log'

export TERM='xterm-256color'
export EDITOR='nvim'
export MANPAGER='nvim +Man!'

HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

zstyle ':completion:*' menu select
bindkey -e

zstyle :compinstall filename '/home/tn/.zshrc'

autoload -Uz compinit
compinit

# 1. Load the module and the hook system
autoload -Uz vcs_info
autoload -Uz add-zsh-hook

# 2. Set the styles (important: enable git explicitly)
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' formats '  %b'

# 3. Use add-zsh-hook instead of a manual precmd function
add-zsh-hook precmd vcs_info

setopt PROMPT_SUBST
# PROMPT='%F{#07AFD7}%n@%m%f:%F{#07AFD7}%~%f%F{#F1641F}${vcs_info_msg_0_}%f$ '
PROMPT='%F{#5277C3}%n@%m%f:%F{#7EBAE4}%~%f%F{#F1641F}${vcs_info_msg_0_}%f$ '
