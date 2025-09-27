typeset -U path PATH
path=(~/.local/chemtools/bin ~/.local/chemtools/scripts ~/.local/bin $path)
export PATH

export MANPAGER='nvim +Man!'
export TERM='foot'
export EDITOR='nvim'
export VISUAL='nvim'
export GPG_TTY=$(tty)
export XDG_CURRENT_DESKTOP=sway
export KEYTIMEOUT=5

export FAYE_ROOT=~/Desktop/faye
