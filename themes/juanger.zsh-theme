# Based on Robby Russell's theme
ARROW="%{$fg_bold[red]%}➜%{$reset_color%}"
DIR="%{$fg[cyan]%}%c%{$reset_color%}"

PROMPT='$ARROW $(ssh_info)$DIR $(git_prompt_info)$(git_prompt_ahead)'
RPROMPT='%{$fg_bold[red]%}$(rbenv_prompt_info)%{$reset_color%} [%* %D]'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg[yellow]%} ↑%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})%{$reset_color%}"

ZSH_THEME_SSH_PROMPT_PREFIX="%{$fg[green]%}"
ZSH_THEME_SSH_PROMPT_SUFFIX=":"

