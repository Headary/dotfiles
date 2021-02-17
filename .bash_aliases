#alias open="xdg-open"
function open () {
    xdg-open "$*" &
}

function touchtoday(){
    today=$(date +'%Y-%m-%d')
    touch "$today$*"
}

alias py="python3"
#alias pip="pip3"
alias pingg="ping 8.8.8.8"
alias pls="sudo !!"

alias cp="cp -i"
alias vim="nvim"
alias vi="nvim"

# Power options
alias sd="shutdown now"
alias suspend="systemctl suspend"

#cd
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

#dir
alias vyfuk="cd ~/Documents/vyfuk/git/vyfuk10"
alias fykos="cd ~/Documents/fykos/r34"
alias olympics="cd ~/Documents/olympiády"
alias fks-texmf="cd ~/Documents/vyfuk/git/fks-texmf/texmf/tex/latex/fks"

function school() {
    cd $(rofi-school)
}

#git
alias ga="git add"
alias gc="git commit -m"
alias gac="git add . && git commit -m"
alias gd="git diff --word-diff"
alias gl="git pull"
alias gp="git push"
alias gs="git status"
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %C(bold blue)<%an>%Creset %Cgreen(%cr)' --abbrev-commit"
alias gf="git fetch"

# git for dotfiles
alias config='/usr/bin/git --git-dir=$HOME/Documents/git/dotfiles/.git --work-tree=$HOME'

# Changing "ls" to "exa"
alias ls='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing
alias l.='exa -a | egrep "^\."'
alias l='exa -a --group-directories-first'

