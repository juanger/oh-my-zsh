export DISABLE_AUTO_TITLE="true"
iterm_titles_preexec() {
  cmd_name=`echo $1 | awk '{print $1}'`
  if [[ "$1" =~ "bundle exec (.*)" ]]; then
    cmd_name=$match
  fi
  pwd_name=`basename $PWD`
  echo -ne "\e]1;${pwd_name} ⊢ ${cmd_name}\a"
}

iterm_titles_precmd() {
  pwd_name=`basename $PWD`
  echo -ne "\e]1;${pwd_name}\a"
}

add-zsh-hook precmd  iterm_titles_precmd
add-zsh-hook preexec iterm_titles_preexec