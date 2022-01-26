#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# neofetch on launch
neofetch

# User specific aliases and functions 
alias vim="nvim"
alias vi="nvim"
