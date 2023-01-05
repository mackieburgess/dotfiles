# : RCs
# `+cd %:h` sets the current working directory to ./
alias zshrc="nvim \"+cd %:h\" ~/.config/zsh/.zshrc"
alias vimrc="nvim \"+cd %:h\" ~/.config/nvim/init.vim"
alias alarc="nvim \"+cd %:h\" ~/.config/alacritty/alacritty.yml"
alias tmxrc="nvim \"+cd %:h\" ~/.config/tmux/.tmux.conf"

alias src="source ~/.config/zsh/.zshrc && source ~/.zshenv && echo 'zshrc sourced!'"

# : modified builtins
alias ls="lsd -A"
alias lc="lsd -Al"
alias l1="lsd -A1"
alias ll="lsd -Al"
alias tree="lsd -A1 --tree --depth 3"

# : CLI helpers
alias armbrew="arch -arm64 brew"
alias carun="cargo run"
alias ipy="ipython"

# : everything is nvim
alias vim="nvim"
alias vi="nvim"
alias nv="nvim"
alias v="nvim"

# : just fun
alias moon="curl -s wttr.in/moon | head -23"

# : tmux
alias tn="tmux -u -f $TMUX_CONFIG new"
alias ta="tmux -u -f $TMUX_CONFIG attach"

# : dotfiles and notes
alias dotfiles="/usr/bin/git --git-dir=$XDG_CONFIG_HOME/dotfiles --work-tree=$HOME"
alias gnote="/usr/bin/git --git-dir=$NOTES/.git --work-tree=$NOTES"
# start a new note in insert mode
alias note="$EDITOR \"+cd %:h\" \"+star\" $NOTES/..."

# : shows all aliases
alias aliases="cat $HOME/.config/zsh/aliases.zsh | rg ^alias"
