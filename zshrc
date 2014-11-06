# Oh My Zsh
# ---------------------------------------

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME='ys'
plugins=(git brew sublime gem bundler rails redis-cli)

source $ZSH/oh-my-zsh.sh

# Exports
# ---------------------------------------

# Extend lookup paths
export CDPATH=$HOME/Code:$CDPATH
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin

# Configure default editor
export EDITOR=/usr/local/bin/subl

# Aliases
# ---------------------------------------

alias t=touch
alias zshconfig="$EDITOR $HOME/.zshrc"

# Ruby/rbenv/etc
# ---------------------------------------

if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi

# Imports
# ---------------------------------------

# Use GRC
source "`brew --prefix`/etc/grc.bashrc"

# Load local Zsh settings if exists
[[ -f $HOME/.zshrc.local ]] && source $HOME/.zshrc.local
