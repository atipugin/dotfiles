# Oh My Zsh
# ---------------------------------------

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME='ys'
plugins=(git brew sublime bundler rails redis-cli)

source $ZSH/oh-my-zsh.sh

# Exports
# ---------------------------------------

# Extend lookup paths
export CDPATH=$HOME/Code:$CDPATH
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin

# Setup Go
export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin:/usr/local/opt/go/libexec/bin

# Configure default editor
export EDITOR=/usr/local/bin/subl

# Aliases
# ---------------------------------------

alias t=touch
alias zshconfig="$EDITOR $HOME/.zshrc"
alias dc=docker-compose
alias dm=docker-machine

# Enable completion
# ---------------------------------------

fpath=(/usr/local/share/zsh-completions $fpath)

autoload -U compinit
compinit

# Ruby/rbenv/etc
# ---------------------------------------

if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi

# Imports
# ---------------------------------------

# Use GRC
source "`brew --prefix`/etc/grc.bashrc"

# Use zsh-syntax-highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Load local Zsh settings if exists
[[ -f $HOME/.zshrc.local ]] && source $HOME/.zshrc.local

# Init boot2docker
eval $(boot2docker shellinit 2>/dev/null)
