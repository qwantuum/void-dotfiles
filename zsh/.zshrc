fastfetch
zmodload zsh/nearcolor

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh


setopt HIST_IGNORE_DUPS
setopt HIST_FIND_NO_DUPS
setopt SHARE_HISTORY
setopt correct
setopt autocd
export COLORTERM="truecolor"

bindkey "^[[1;5A" history-beginning-search-backward

alias cd='z'

autoload -Uz compinit && compinit

alias ls='eza --icons always'
alias m='micro'
# alias nvim='nvim --clean --cmd "set notermguicolors"'

export PATH="$HOME/.local/bin:$PATH"
export EDITOR="nvim"

export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

eval "$(starship init zsh)"
# Включаем режим кастомных паттернов для подсветки
# Включаем режим кастомных паттернов для подсветки
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)

# Продвинутая подсветка полных HEX-кодов (игнорирует кавычки вокруг)
ZSH_HIGHLIGHT_PATTERNS+=('(#i)#[0-9a-f]{6}' 'bg=$MATCH,fg=black')

# Продвинутая подсветка коротких HEX-кодов (игнорирует кавычки вокруг)
ZSH_HIGHLIGHT_PATTERNS+=('(#i)#[0-9a-f]{3}' 'bg=$MATCH,fg=black')

export MICRO_TRUECOLOR=1
eval "$(zoxide init zsh)"
