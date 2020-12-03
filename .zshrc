# Path to your oh-my-zsh installation.
export ZSH="/Users/qgaye/.oh-my-zsh"

# zsh theme
ZSH_THEME="robbyrussell"

# plugins
plugins=(
    mvn
    node
    npm
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
    # git-open
)

# zsh completions
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

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

# ffmpeg
export PATH=$PATH:~/Tool/ffmpeg

# bat theme
export BAT_THEME="Nord"

alias ls=exa
alias l=exa
alias ll="exa -alg --git --time-style long-iso"
alias la="exa -abghHliS --git --time-style long-iso"
alias tree="exa --tree"
alias cat="bat --style=\"changes,numbers\""
alias h=hstr
alias s=screenfetch
alias cp="cp -i"
alias uuid=uuidgen

