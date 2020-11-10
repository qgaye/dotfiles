# Path to your oh-my-zsh installation.
export ZSH="/Users/qgaye/.oh-my-zsh"

# zsh theme
ZSH_THEME="robbyrussell"

# plugins
plugins=(
    node
    npm
    yarn
    rust
    cargo
    golang
    brew
    docker
    docker-compose
    sudo
    iterm2
    last-working-dir
    zsh-syntax-highlighting
    zsh-autosuggestions
    autojump
    # deno
    # git-open
)

source $ZSH/oh-my-zsh.sh

# autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# vscode
alias vscode="open -a Visual\ Studio\ Code"

# Proxy
alias proxy="export https_proxy=http://127.0.0.1:7890; export http_proxy=http://127.0.0.1:7890; export all_proxy=socks5://127.0.0.1:7891; echo proxy open"
alias unproxy="unset https_proxy; unset http_proxy; unset all_proxy; echo proxy close"

# homebrew python instead system python
export PATH=/usr/local/opt/python/libexec/bin:$PATH

# java
export JAVA_HOME="/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home"

# go 
export GOPATH="/Users/qgaye/.go"
export PATH=$PATH:$GOPATH/bin
export GO11MODULE=on
export GOPROXY="https://goproxy.io,direct"

alias cp="cp -i"
alias uuid=uuidgen

