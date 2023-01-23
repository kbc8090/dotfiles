#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1="\[\e[1;31m\][\[\e[m\]\[\e[1;32m\]\u\[\e[m\]\[\e[1;31m\]@\[\e[m\]\[\e[1;34m\]\h\[\e[m\] \[\e[1;35m\]\w\[\e[m\]\[\e[1;31m\]]\[\e[m\]\[\e[1;33m\] »\[\e[m\] "

# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

alias ls='exa -a --group-directories-first --icons'
alias ll='exa -alh --group-directories-first --icons'
alias vim='nvim'
alias df='df -h'
alias sdn='shutdown now'
alias sx='startx'
alias vimrc='nvim $HOME/.config/nvim/init.vim'
alias pacup='sudo pacman -Syyu'
