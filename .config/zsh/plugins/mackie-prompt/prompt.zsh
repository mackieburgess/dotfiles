# version control information
setopt prompt_subst
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git*' formats ' %B%F{yellow}%b%f'

#       ._____________[user@machine]___________. ._____( currentdir git_info )_____. ._____________λ_____________.
PROMPT='[%F{cyan}%B%n%F{240}%b@%F{cyan}%B%m%b%f] ( %F{blue}%1~%f${vcs_info_msg_0_} ) %(?.%F{green}.%F{red})%Bλ%b%f  '
