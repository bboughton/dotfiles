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
alias bers='bundle exec rails server'

alias gsh='git sh'

alias vundle='vim +PluginInstall +qall'

alias vi='vim'

alias date_iso8601='date +%Y-%m-%dT%H:%M:%S%z'

# changing directory to code project
function p { cd ~/code/$1; }

# QuickLook
alias ql='qlmanage -p'

alias boot2docker-shellinit='$(boot2docker shellinit)'

intip() {
	ipconfig getifaddr $1
}

extip() {
	curl http://ipecho.net/plain; echo;
}

function docker-nuke(){
  # Delete all docker containers
  docker ps -aq | xargs docker rm --force

  # Delete all docker images
  docker images -aq | xargs docker rmi
}

function envgrep(){
  env | grep $@
}
