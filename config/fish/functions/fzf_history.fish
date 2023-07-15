function fzf_history
    history | fzf --reverse --border --height 100% --prompt "󰋚 Find in history: " --query=(commandline) | read cmd
    if test -n "$cmd"
        commandline $cmd
    end
end
