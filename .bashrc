#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias emacsn='emacs -nw $1'
alias eclimd='bash /home/jack/eclipse/java-photon/eclipse/eclimd &'

PS1='[\u@\h \W]\$ '
