# Based on Robby Russell's theme
ARROW="%{$fg_bold[red]%}➜"
DIR="%{$fg[cyan]%}%c%{$reset_color%}"

PROMPT='$ARROW $(ssh_info)$DIR $(git_prompt_info)$(git_prompt_ahead) '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg[yellow]%} ↑%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})%{$reset_color%}"

ZSH_THEME_SSH_PROMPT_PREFIX="%{$fg_bold[green]%}"
ZSH_THEME_SSH_PROMPT_SUFFIX=":"

