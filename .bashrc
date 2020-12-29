#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='exa --icons --group-directories-first'
alias ll='exa -alh --icons --group-directories-first'
PS1='[\u@\h \W]\$ '
