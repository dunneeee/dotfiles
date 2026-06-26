# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

ZSH_AUTOSUGGEST_STRATEGY=(history completion)

source $ZSH/oh-my-zsh.sh

alias v="nvim"
alias vim="nvim"
alias nv="nvim"
alias ta="tmux attach -t"
alias tn="tmux new -s"
alias tl="tmux ls"
alias tk="tmux kill-session -t"
alias ls="eza --icons --group-directories-first"
alias ll="eza -lbF --git --icons --group-directories-first"
alias cd="z"

path+=(
$HOME/.local/bin
  )

export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!{.git,node_modules,vendor}/*"'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --border --inline-info"

eval "$(zoxide init zsh)"

# NVM
source /usr/share/nvm/init-nvm.sh

