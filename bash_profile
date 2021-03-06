# .bash_profile will run only on login
# ------------------------------------
#
# First thing we want to do is load the .bashrc file the majority of settings
# including custom paths and aliases will go in the .bashrc so we have access
# to them in a new terminal session.
#

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi
