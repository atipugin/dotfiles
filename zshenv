# Set lookup paths
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin

# Configure Golang
export PATH=$PATH:$(go env GOPATH)/bin

# Set default apps
export EDITOR=/usr/local/bin/code
export SHELL=/usr/local/bin/zsh
export PAGER="less -X"

# Etc
export GPG_TTY=$(tty)

# Load local env vars
[[ -f ~/.zshenv.local ]] && source ~/.zshenv.local
