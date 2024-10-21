if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git fast-syntax-highlighting zsh-autosuggestions fzf fzf-tab)

source <(fzf --zsh)
source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
fi

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias code="cd ~/Docs/Coding2/DungeonProject/ && nvim"
alias cpp="g++ -o run main.cpp && ./run"
alias build="cargo build && cargo run"
alias hyprconfig="cd ~/.config/hypr/"
alias neoconfig="cd ~/.config/nvim"

source $HOME/.local/share/nvim/mason/packages/black/venv/bin/activate
nitch

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# To customize prompt, run `p10k configure` or edit ~/dotfiles/.p10k.zsh.
[[ ! -f ~/dotfiles/.p10k.zsh ]] || source ~/dotfiles/.p10k.zsh
