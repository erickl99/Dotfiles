#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

# Sets the color of the text in bash
MYRED="\[$(tput setaf 196)\]"
MYORANGE="\[$(tput setaf 3)\]"
MYGREEN="\[$(tput setaf 10)\]"
MYBLUE="\[$(tput setaf 6)\]"
MYPURPLE="\[$(tput setaf 210)\]"
RESET="\[$(tput sgr0)\]"

PS1="${MYRED}[${MYORANGE}\u${MYGREEN}@${MYBLUE}\h${MYPURPLE} \W${MYRED}]${RESET}\$ "

#PS1='[\u@\h \W]\$'

# Aliases
aur ()
{
     cd /home/erick/downloads/aur/$1
}
