#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias code="cd ~/Documents/GitHub/Coding2/DungeonProject/ && nvim"
alias fehfull="feh -pF"
#PS1='[\u@\h \W]\$ '
RED='\e[1;31m'
GREEN='\e[1;32m'
YELLOW='\e[1;33m'
BLUE='\e[1;34m'
PURPLE='\e[1;35m'
CYAN='\e[1;37m'

LIGHTRED='\e[91'
LIGHTGREEN='\e[92'
LIGHTYELLOW='\e[93'
LIGHTBLUE='\e[94'
LIGHTPURPLE='\e[95'
LIGHTCYAN='\e[96'



CLOSE='\e[0m' # No Color

PS1="\r$YELLOW[\w]$CLOSE$GREEN[\d]$RED[\A]$CLOSE$BLUE\n~> $CLOSE"
source ~/scripts/venv.sh

blue() { echo -e "${BLUE}${1}${CLOSE}"; }
blue "$(figlet -w 200 "I use Arch BTW!")"


