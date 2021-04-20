function fzf_history
  history | fzf | read cmd
  if test -n "$cmd"
    commandline $cmd
  end
end
