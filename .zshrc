# Path to your oh-my-zsh installation.
export ZSH="/Users/qgaye/.oh-my-zsh"

# zsh theme
ZSH_THEME="robbyrussell"

# plugins
plugins=(
    deno
    rust
    cargo
    scala
    sbt
    golang
    brew
    docker
    docker-compose
    sudo
    iterm2
    last-working-dir
    zsh-syntax-highlighting
    zsh-autosuggestions
    git-open
    autojump
)

source $ZSH/oh-my-zsh.sh

alias cp="cp -i"
alias cat="bat"

# autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# vscode
alias vscode="open -a Visual\ Studio\ Code"

# Proxy
alias proxy="export https_proxy=http://127.0.0.1:7890; export http_proxy=http://127.0.0.1:7890; export all_proxy=socks5://127.0.0.1:7891; echo proxy open"
alias unproxy="unset https_proxy; unset http_proxy; unset all_proxy; echo proxy close"

# homebrew python instead system python
export PATH=/usr/local/opt/python/libexec/bin:$PATH

# go 
export GOPATH="/Users/qgaye/.go"
export PATH=$PATH:$GOPATH/bin
export GO11MODULE=on
export GOPROXY="https://goproxy.io,direct"

