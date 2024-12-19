function fzf_change_directory
    begin
        zoxide query -l
        ghq list -p
        echo $HOME/.dotfiles
    end | awk '!seen[$0]++' | fzf --reverse --height 100% --prompt " Jump to dir: " | read dir
    commandline -f repaint
    if test -n "$dir"
        cd $dir
    end
end
