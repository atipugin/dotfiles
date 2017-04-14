# Set lookup paths
export CDPATH=$HOME/Code:$CDPATH
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin

# Configure Golang
export GOPATH=$HOME/Code/go
export PATH=$PATH:$GOPATH/bin:/usr/local/opt/go/libexec/bin
export CDPATH=$GOPATH/src:$CDPATH

# Set default apps
export EDITOR=/usr/local/bin/subl
export SHELL=/usr/local/bin/zsh
export PAGER="less -X"
