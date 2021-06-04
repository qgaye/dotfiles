# Path to your oh-my-zsh installation.
export ZSH="/Users/qgaye/.oh-my-zsh"

# zsh theme
ZSH_THEME="robbyrussell"

# plugins
plugins=(
    mvn
    node
    npm
    golang
    brew
    docker
    docker-compose
    iterm2
    last-working-dir
    autojump
)

# zsh completions
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

source $ZSH/oh-my-zsh.sh

# use vim mode
bindkey -v

function zle-keymap-select {
	if [[ ${KEYMAP} == vicmd ]] || [[ $1 = 'block' ]]; then
		echo -ne '\e[1 q'
	elif [[ ${KEYMAP} == main ]] || [[ ${KEYMAP} == viins ]] || [[ ${KEYMAP} = '' ]] || [[ $1 = 'beam' ]]; then
		echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
echo -ne '\e[5 q'

# autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# vscode
alias vscode="open -a Visual\ Studio\ Code"

# Proxy
alias proxy="export https_proxy=http://127.0.0.1:7890; export http_proxy=http://127.0.0.1:7890; export all_proxy=socks5://127.0.0.1:7891; echo proxy open;"
alias unproxy="unset https_proxy; unset http_proxy; unset all_proxy; echo proxy close;"

# homebrew python instead system python
export PATH=/usr/local/opt/python/libexec/bin:$PATH

# java
export JAVA_HOME="/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home"

# scala
export SCALA_HOME="/usr/local/opt/scala/idea"

# go 
export GOPATH="/Users/qgaye/.go"
export PATH=$PATH:$GOPATH/bin
export GO11MODULE=on
export GOPROXY="https://goproxy.io,direct"

# pipx
export PATH=$PATH:~/.local/bin

# ffmpeg
export PATH=$PATH:~/Tool/ffmpeg

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND="fd --type f --hidden --no-ignore --exclude={.git,.idea,.vscode,node_modules}"
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --preview 'cat {}'"
export FZF_COMPLETION_TRIGGER='fzf'

# hstr config
export HSTR_CONFIG=hicolor,prompt-bottom,hide-basic-help

alias g="git"
alias ls="exa"
alias l="exa"
alias ll="exa -alg --git --time-style long-iso"
alias la="exa -abghHliS --git --time-style long-iso"
alias tree="exa --tree"
alias grep="rg -i"
alias find="fd --type f --hidden --no-ignore --exclude={.git,.idea,.vscode,node_modules}"
alias h="hstr"
alias s="screenfetch"
alias cp="cp -i"
alias uuid="uuidgen"

alias cfr="java -jar ~/Tool/cfr.jar"

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
