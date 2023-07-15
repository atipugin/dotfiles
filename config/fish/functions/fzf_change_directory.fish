function fzf_change_directory
    begin
        echo $HOME/.dotfiles
        ghq list -p
        jump top
    end | awk '!seen[$0]++' | fzf --reverse --border --height 100% --prompt " Jump to dir: " | read dir

    if test -n "$dir"
        cd $dir
        commandline -f repaint
    end
end
