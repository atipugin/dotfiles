# Set vars
set -gx GHQ_ROOT ~/Code
set -gx HOMEBREW_NO_AUTO_UPDATE 1

# Set paths
fish_add_path ~/.local/bin /opt/homebrew/bin

# Start fish with no greeting
set fish_greeting ''

# git prompt
set -g __fish_git_prompt_color_cleanstate green --bold
set -g __fish_git_prompt_color_dirtystate yellow
set -g __fish_git_prompt_color_invalidstate red
set -g __fish_git_prompt_show_informative_status 1

# Abbreviations
abbr -a be bundle exec
abbr -a bri brew install
abbr -a brls brew list
abbr -a bruz brew uninstall --zap
abbr -a dcb docker compose build
abbr -a dcr docker compose run
abbr -a dcu docker compose up
abbr -a ga git add
abbr -a gb git branch
abbr -a gba git branch -a
abbr -a gbd git branch -d
abbr -a gc git commit -v
abbr -a gcb git checkout -b
abbr -a gcl ghq get
abbr -a gco git checkout
abbr -a gd git diff
abbr -a gds git diff --staged
abbr -a gf git fetch
abbr -a gl git pull
abbr -a glog git log --oneline --decorate --graph
abbr -a gm git merge
abbr -a gp git push
abbr -a gpf git push --force
abbr -a gpfl git push --force-with-lease
abbr -a grb git rebase
abbr -a grba git rebase --abort
abbr -a grbc git rebase --continue
abbr -a gss git status -s
abbr -a gst git status
abbr -a keti kubectl exec -ti
abbr -a kgp kubectl get pod
abbr -a kgpr kubectl get pod --field-selector status.phase=Running
abbr -a klf kubectl logs -f
abbr -a kns kubens
abbr -a ktx kubectx
abbr -a ktxc kubectx -c
abbr -a lla ll -a
abbr -a rc rails c
abbr -a rd rails d
abbr -a rgen rails g

# Aliases
alias g git
alias r rails

# https://github.com/jdx/mise
if type -q mise
    if status is-interactive
        mise activate fish | source
    else
        mise activate fish --shims | source
    end
end

if status is-interactive
    # https://github.com/ajeetdsouza/zoxide
    if type -q zoxide
        zoxide init fish | source
    end

    # https://github.com/ellie/atuin
    if type -q atuin
        set -gx ATUIN_NOBIND 1
        atuin init fish | source
    end

    # https://github.com/starship/starship
    if type -q starship
        starship init fish | source
    end
end

# Load local config if exists
set local_conf_path (dirname (status current-filename))/config.local.fish
if test -f $local_conf_path
    source $local_conf_path
end

# https://thoughtbot.com/blog/git-safe
set -gxp PATH .git/safe/../../bin
