# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob nomatch notify
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'
zstyle ':completion:*' menu select

autoload -Uz compinit promptinit
compinit
promptinit
# End of lines added by compinstall

####################################################### Lines configured by user
PROMPT='%F{1}[%f%F{6}%n%f%F{1}@%m%f %F{3}%2~%f%F{1}]%f%F{3}%#%f '
source ~/.zsh_aliases
source ~/.local/comp_chem_scripts/aliases
eval "$(zoxide init zsh)"
export MANPAGER='nvim +Man!'

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

export TERM='foot'
export EDITOR='nvim'
export VISUAL='nvim'
export GPG_TTY=$(tty)

# pyenv (greatly slows down terminal load times)
# export PYENV_ROOT="$HOME/.pyenv"
# [[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"
#
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
