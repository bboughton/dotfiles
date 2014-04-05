export PS1='\W\$ '
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
