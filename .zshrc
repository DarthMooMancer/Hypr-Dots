HISTFILE=~/.zsh_history
HISTSIZE=150
SAVEHIST=500

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^[[3~" delete-char
bindkey "^[[5~" up-line
bindkey "^[[6~" down-line

fpath+=($HOME/.config/zsh/pure)
autoload -U compinit; compinit
autoload -Uz promptinit; promptinit
source $HOME/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.config/zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias javab="javac *.java && java"
alias comp="sudo rm -rf config.h && make && sudo make install"

cd ~/
prompt pure
