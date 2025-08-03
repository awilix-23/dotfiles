typeset -U path PATH
path=(~/.local/bin $path)
export PATH

export MANPAGER='nvim +Man!'
export TERM='foot'
export EDITOR='nvim'
export VISUAL='nvim'
export GPG_TTY=$(tty)

export KEYTIMEOUT=5

export XDG_CURRENT_DESKTOP=sway
