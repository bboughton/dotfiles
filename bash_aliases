# cd
alias ..='cd ..'
alias cd..='cd ..'

# ls
alias la='ls -A'
alias ll='ls -l'
alias lla='ls -Al'

alias rr='rake routes'
alias rrg='rake routes | grep'

# make sure i really want to remove something
alias rm='rm -i'

# Newline delimited list of directories in my path
alias path='echo -e ${PATH//:/\\n}'

# Rails
alias tlog='tail -f log/development.log'

alias gsh='git sh'

alias vundle='vim +PluginInstall +qall'

# changing directory to code project
function c { cd ~/code/$1; }

# QuickLook
alias ql='qlmanage -p'
