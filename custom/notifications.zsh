if growlnotify -h &>/dev/null; then
  notifications_preexec() {
    zsh_growl_cmd=$1
    zsh_growl_time=`date +%s`
  }

  notifications_precmd() {
    if (( $? == 0 )); then
      zsh_growl_status=done
      zsh_growl_priority=Normal
    else
      zsh_growl_status=fail
      zsh_growl_priority=Emergency
    fi
    if [[ "${zsh_growl_cmd}" != "" ]]; then
      if (( `date +%s` - ${zsh_growl_time} > 5 )); then
        growlnotify -n 'term-notify' -p ${zsh_growl_priority} -m ${zsh_growl_cmd} ${zsh_growl_status}
        say ${zsh_growl_status}
      fi
    fi
    zsh_growl_cmd=
  }
  
  add-zsh-hook precmd  notifications_precmd
  add-zsh-hook preexec notifications_preexec
  
fi
