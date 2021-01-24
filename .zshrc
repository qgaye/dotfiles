# Path to your oh-my-zsh installation.
export ZSH="/Users/qgaye/.oh-my-zsh"

# zsh theme
ZSH_THEME="robbyrussell"

# plugins
plugins=(
    mvn
    gradle
    node
    npm
    rust
    cargo
    golang
    brew
    docker
    docker-compose
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
alias proxy="export https_proxy=http://127.0.0.1:7890; export http_proxy=http://127.0.0.1:7890; export all_proxy=socks5://127.0.0.1:7891; echo proxy opne;"
alias unproxy="unset https_proxy; unset http_proxy; unset all_proxy; echo proxy close;"

# homebrew python instead system python
export PATH=/usr/local/opt/python/libexec/bin:$PATH

# java
export JAVA_HOME="/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home"

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
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --preview \"bat --style=changes,numbers --color=always --line-range :500 {}\""
export FZF_COMPLETION_TRIGGER='fzf'


# Nord .dir_colors [https://github.com/arcticicestudio/nord-dircolors/blob/develop/src/dir_colors]
# use dircolors which install by [brew install coreutils] to convert .dir_colors File to LS_COLORS variable
export CLICOLOE=1
export LS_COLORS="no=00:rs=0:fi=00:di=01;34:ln=36:mh=04;36:pi=04;01;36:so=04;33:do=04;01;36:bd=01;33:cd=33:or=31:mi=01;37;41:ex=01;36:su=01;04;37:sg=01;04;37:ca=01;37:tw=01;37;44:ow=01;04;34:st=04;37;44:*.7z=01;32:*.ace=01;32:*.alz=01;32:*.arc=01;32:*.arj=01;32:*.bz=01;32:*.bz2=01;32:*.cab=01;32:*.cpio=01;32:*.deb=01;32:*.dz=01;32:*.ear=01;32:*.gz=01;32:*.jar=01;32:*.lha=01;32:*.lrz=01;32:*.lz=01;32:*.lz4=01;32:*.lzh=01;32:*.lzma=01;32:*.lzo=01;32:*.rar=01;32:*.rpm=01;32:*.rz=01;32:*.sar=01;32:*.t7z=01;32:*.tar=01;32:*.taz=01;32:*.tbz=01;32:*.tbz2=01;32:*.tgz=01;32:*.tlz=01;32:*.txz=01;32:*.tz=01;32:*.tzo=01;32:*.tzst=01;32:*.war=01;32:*.xz=01;32:*.z=01;32:*.Z=01;32:*.zip=01;32:*.zoo=01;32:*.zst=01;32:*.aac=32:*.au=32:*.flac=32:*.m4a=32:*.mid=32:*.midi=32:*.mka=32:*.mp3=32:*.mpa=32:*.mpeg=32:*.mpg=32:*.ogg=32:*.opus=32:*.ra=32:*.wav=32:*.3des=01;35:*.aes=01;35:*.gpg=01;35:*.pgp=01;35:*.doc=32:*.docx=32:*.dot=32:*.odg=32:*.odp=32:*.ods=32:*.odt=32:*.otg=32:*.otp=32:*.ots=32:*.ott=32:*.pdf=32:*.ppt=32:*.pptx=32:*.xls=32:*.xlsx=32:*.app=01;36:*.bat=01;36:*.btm=01;36:*.cmd=01;36:*.com=01;36:*.exe=01;36:*.reg=01;36:*~=02;37:*.bak=02;37:*.BAK=02;37:*.log=02;37:*.log=02;37:*.old=02;37:*.OLD=02;37:*.orig=02;37:*.ORIG=02;37:*.swo=02;37:*.swp=02;37:*.bmp=32:*.cgm=32:*.dl=32:*.dvi=32:*.emf=32:*.eps=32:*.gif=32:*.jpeg=32:*.jpg=32:*.JPG=32:*.mng=32:*.pbm=32:*.pcx=32:*.pgm=32:*.png=32:*.PNG=32:*.ppm=32:*.pps=32:*.ppsx=32:*.ps=32:*.svg=32:*.svgz=32:*.tga=32:*.tif=32:*.tiff=32:*.xbm=32:*.xcf=32:*.xpm=32:*.xwd=32:*.xwd=32:*.yuv=32:*.anx=32:*.asf=32:*.avi=32:*.axv=32:*.flc=32:*.fli=32:*.flv=32:*.gl=32:*.m2v=32:*.m4v=32:*.mkv=32:*.mov=32:*.MOV=32:*.mp4=32:*.mpeg=32:*.mpg=32:*.nuv=32:*.ogm=32:*.ogv=32:*.ogx=32:*.qt=32:*.rm=32:*.rmvb=32:*.swf=32:*.vob=32:*.webm=32:*.wmv=32:"

# bat theme
export BAT_THEME="Nord"

# hstr config
export HSTR_CONFIG=hicolor,prompt-bottom,hide-basic-help

alias ls="exa"
alias l="exa"
alias ll="exa -alg --git --time-style long-iso"
alias la="exa -abghHliS --git --time-style long-iso"
alias tree="exa --tree"
alias cat="bat --style=\"changes,numbers\""
alias grep="rg -i"
alias find="fd --type f --hidden --no-ignore --exclude={.git,.idea,.vscode,node_modules}"
alias h="hstr"
alias s="screenfetch"
alias cp="cp -i"
alias uuid="uuidgen"

alias cfr="java -jar ~/Tool/cfr.jar"


