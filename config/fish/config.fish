# Start fish with no greeting
set fish_greeting ''

# git prompt
set -g __fish_git_prompt_show_informative_status 1
set -g __fish_git_prompt_color_cleanstate green --bold
set -g __fish_git_prompt_color_dirtystate yellow
set -g __fish_git_prompt_color_invalidstate red

# Abbreviations
abbr -a be bundle exec
abbr -a ga git add
abbr -a gb git branch
abbr -a gcb git checkout -b
abbr -a gco git checkout
abbr -a gd git diff
abbr -a gf git fetch
abbr -a gho gh repo view --web
abbr -a gl git pull
abbr -a gst git status
abbr -a rc rails c
abbr -a rgen rails g

# Alises
alias g=git
alias r=rails
alias v=vim

# https://github.com/gsamokovarov/jump
status --is-interactive; and source (jump shell fish | psub)

# https://github.com/rbenv/rbenv
status --is-interactive; and source (rbenv init - | psub)

# https://github.com/garabik/grc
status --is-interactive; and source /usr/local/etc/grc.fish

set -gxp PATH .git/safe/../../bin ~/.bin
set -gx EDITOR /usr/local/bin/vim
