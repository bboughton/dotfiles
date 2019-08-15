export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\n\$\[\033[00m\] '
export PATH=~/bin:$PATH

# Use vim installed by homebrew if present
if [ -f /usr/local/bin/vim ]; then
  export EDITOR=/usr/local/bin/vim
else
  export EDITOR=/usr/bin/vim
fi

source ~/.bash_aliases

# Git Safe Bin
#   mkdir .git/safe in root of repo that you trust
export PATH=".git/safe/../../bin:$PATH"

if command -v brew >/dev/null; then

  # Setup bash completion
  if [[ -f $(brew --prefix)/etc/bash_completion ]]; then
    source $(brew --prefix)/etc/bash_completion
  fi

  # Setup gcloud sdk path
  if [[ -f $(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc ]]; then
    source $(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc
  fi

  # Setup gcloud sdk bash completion
  if [[ -f $(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc ]]; then
    source $(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc
  fi

fi

# Setup jenv
if command -v jenv >/dev/null; then
  export PATH="$PATH:$HOME/.jenv/bin"
  eval "$(jenv init -)"
fi

if [ -f ~/.localrc ]; then
  source ~/.localrc
fi
