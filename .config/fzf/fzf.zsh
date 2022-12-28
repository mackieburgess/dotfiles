# Setup fzf
if [[ ! "$PATH" == */opt/homebrew/opt/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/opt/homebrew/opt/fzf/bin"
fi

# RipGrep
if which fzf &> /dev/null && which rg &> /dev/null; then
    export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*" --glob "!vendor/*" --glob "!{Library,Movies,Music,Pictures}/**"'
    export FZF_CTRL_T_COMMAND='rg --files --hidden --follow --glob "!.git/*" --glob "!vendor/*" --glob "!{Library,Movies,Music,Pictures}/**"'
fi

# Colours
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
 --color=fg:white,bg:-1,hl:blue
 --color=fg+:green,bg+:#393e53,hl+:green
 --color=info:yellow,prompt:red,pointer:magenta
 --color=spinner:magenta,marker:cyan,header:cyan'

# Auto-completion
[[ $- == *i* ]] && source "/opt/homebrew/opt/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
source "/opt/homebrew/opt/fzf/shell/key-bindings.zsh"
