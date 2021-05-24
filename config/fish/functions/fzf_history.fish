function fzf_history
  history | fzf --query=(commandline) | read cmd
  if test -n "$cmd"
    commandline $cmd
  end
end
