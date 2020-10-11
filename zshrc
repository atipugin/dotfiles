# oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME='ys'
plugins=(git bundler rails docker docker-compose)
source $ZSH/oh-my-zsh.sh

# zsh-completions
fpath=(/usr/local/share/zsh-completions $fpath)

# grc
source /usr/local/etc/grc.zsh

# zsh-syntax-highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# z
source /usr/local/etc/profile.d/z.sh

# etc
source $HOME/.functions
source $HOME/.aliases
