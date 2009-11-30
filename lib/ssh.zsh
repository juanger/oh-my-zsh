# Variables for themeing the ssh prompt
ZSH_THEME_SSH_HOST_NAME_SUFFIX=":"

# Get the host name when connected via ssh
function ssh_info() {
  if [[ -n $SSH_TTY ]]; then
    echo "%m$ZSH_THEME_SSH_HOST_NAME_SUFFIX"
  fi
  return
}
