# Get the host name when connected via ssh
function ssh_info() {
  if [[ -n $SSH_TTY ]]; then
    echo "$ZSH_THEME_SSH_PROMPT_PREFIX%m$ZSH_THEME_SSH_PROMPT_SUFFIX"
  fi
  return
}
