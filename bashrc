export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '
export PATH=~/bin:$PATH

# Use vim installed by homebrew if present
if [ -f /usr/local/bin/vim ]; then
  export EDITOR=/usr/local/bin/vim
else
  export EDITOR=/usr/bin/vim
fi

source ~/.bash_aliases

if [ -f ~/.localrc ]; then
  source ~/.localrc
fi
