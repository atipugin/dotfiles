function fzf_history
    history | fzf --reverse --border --height 100% --prompt "󰋚 Find in history: " --query=(commandline) | read cmd
    commandline -f repaint
    if test -n "$cmd"
        commandline -r $cmd
    end
end
