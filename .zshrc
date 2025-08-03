HISTFILE=~/.zhistory
HISTSIZE=1000
SAVEHIST=1000
setopt hist_ignore_all_dups

setopt extendedglob nomatch notify
unsetopt beep

bindkey -v

zstyle :compinstall filename '~/.zshrc'
zstyle ':completion:*' menu select
autoload -Uz compinit promptinit
compinit
promptinit

PROMPT='%F{1}[%f%F{6}%n%f%F{1}@%m%f %F{3}%2~%f%F{1}]%f%F{3}%#%f '

eval "$(zoxide init zsh)"

PLUGIN_DIR=/usr/share/zsh/plugins
source ~/.zsh_aliases
source ${PLUGIN_DIR}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ${PLUGIN_DIR}/zsh-autosuggestions/zsh-autosuggestions.zsh
################################################################################
# Functions
#
fzf_history() {
  local selected
  selected=$(cat ${HISTFILE} | fzf)
  if [[ -n ${selected} ]]; then
    LBUFFER+=${selected}
  fi
  zle reset-prompt
}

zle -N fzf_history
bindkey '^R' fzf_history
