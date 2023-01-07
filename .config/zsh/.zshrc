# zsh prompt and syntax highlighting
source "$HOME/.config/zsh/plugins/mackie-prompt/prompt.zsh"
source "$HOME/.config/zsh/plugins/fast-syntax/fast-syntax-highlighting.plugin.zsh"

# add zsh functions to fpath
fpath+="$HOME/.config/zsh/functions"

# add brew site-functions to fpath
if type brew &>/dev/null
then
  fpath+="$(brew --prefix)/share/zsh/site-functions"
fi

# autocomplete w/ matcher list and nice menu
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' menu select

# I can't remember what this does, TODO: look it up
zle_highlight=('paste:none')

unsetopt menu_complete   # do not autoselect the first completion entry
setopt auto_param_slash  # tab complete adds a slash to dirs
setopt auto_menu         # show completion menu on successive tab press

# term
export TERM="xterm-256color"

# config files in ~/ _suck_
# I don't think all of this even works
export TMUX_CONFIG="$XDG_CONFIG_HOME/tmux/.tmux.conf"
export IPYTHONDIR="$XDG_CONFIG_HOME/ipython"
export PYTHONSTARTUP="$XDG_CONFIG_HOME/ipython/pythonrc.py"
export GEM_HOME="$XDG_CACHE_HOME/gem"
export GEM_PATH="$XDG_CACHE_HOME/gem"
export CARGO_HOME="$XDG_CONFIG_HOME/cargo/"
export RUSTUP_HOME="$XDG_CONFIG_HOME/rustup/"
export CABAL_DIR="$XDG_CONFIG_HOME/cabal/"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/config"
export NODE_REPL_HISTORY="$XDG_CONFIG_HOME/npm/node_repl_history"
export TEALDEER_CONFIG_DIR="$XDG_CONFIG_HOME/tldr"
export ANDROID_SDK_ROOT="$XDG_DATA_HOME/android"
export POETRY_HOME="$XDG_CONFIG_HOME/poetry"
export LESSHISTFILE="/dev/null"

# cargo
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}"/cargo/env ] && source "${XDG_CONFIG_HOME:-$HOME/.config}"/cargo/env


# neovim as a default editor
export EDITOR='nvim'
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# brew never shutting up
export HOMEBREW_NO_ENV_HINTS=true

# history settings
setopt inc_append_history
setopt hist_ignore_dups

# fzf
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}"/fzf/fzf.zsh ] && source "${XDG_CONFIG_HOME:-$HOME/.config}"/fzf/fzf.zsh

# binds
# bindkey "^k" up-line-or-beginning-search
# bindkey "^j" down-line-or-beginning-search
bindkey "^b" backward-word
bindkey "^f" forward-word
bindkey -e

# aliases
source "$HOME/.config/zsh/aliases.zsh"

