#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias code="cd ~/Documents/Coding2/DungeonProject/ && nvim"
alias comp="doas rm -rf config.h && make && doas make install"
alias emerge-update-world="doas emerge -avtDUu @world"
alias brightness-enable="doas chown andrew:andrew /sys/class/backlight/amdgpu_bl0/brightness"
alias emerge-cleanup="doas sh ~/scripts/emerge-cleanup.sh"
alias cpp="g++ -o run main.cpp && ./run"
PS1='\r\e[1;31m\][\[\e[1;33m\]\u\[\e[1;32m\]@\[\e[1;34m\]\h \[\e[1;35m\]\w\[\e[1;31m\]]\[\e[1;00m\] \$\[\e[0;00m\] '
source ~/scripts/venv.sh
complete -F _root_command doas
