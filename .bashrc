#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias code="cd ~/Documents/GitHub/Coding2/DungeonProject/ && nvim"
alias comp="sudo rm -rf config.h && make && sudo make install"

RED='\e[1;31m'
GREEN='\e[1;32m'
YELLOW='\e[1;33m'
BLUE='\e[1;34m'
PURPLE='\e[1;35m'
CYAN='\e[1;37m'

CLOSE='\e[0m' # No Color

PS1="\r$YELLOW[\w]$CLOSE$GREEN[\d]$RED[\A]$CLOSE$BLUE\n& $CLOSE"
source ~/scripts/venv.sh

