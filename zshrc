# oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME='ys'
plugins=(git bundler rails docker kubectl)
source $ZSH/oh-my-zsh.sh

# zsh-completions
fpath=(/usr/local/share/zsh-completions $fpath)

# rbenv
if which rbenv >/dev/null; then eval "$(rbenv init -)"; fi

# grc
source /usr/local/etc/grc.zsh

# zsh-syntax-highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# autojump
source /usr/local/etc/profile.d/autojump.sh

# etc
source $HOME/.functions
source $HOME/.aliases
