# Lines configured by zsh-newuser-install
alias v='nvim'
alias sv='sudo -E nvim'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias btw='fastfetch'

export TERM='xterm-256color'

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

zstyle ':completion:*' menu select

#
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/tn/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Load version control information

# 1. Load the module and the hook system
autoload -Uz vcs_info
autoload -Uz add-zsh-hook

# 2. Set the styles (important: enable git explicitly)
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' formats '  %b'
#zstyle ':vcs_info:git:*' formats '  %b'

# 3. Use add-zsh-hook instead of a manual precmd function
add-zsh-hook precmd vcs_info

setopt PROMPT_SUBST
# PROMPT='%F{38}%n@%m%f:%F{38}%~%f%F{208}${vcs_info_msg_0_}%f$ '
PROMPT='%F{#07AFD7}%n@%m%f:%F{#07AFD7}%~%f%F{#F1641F}${vcs_info_msg_0_}%f$ '
