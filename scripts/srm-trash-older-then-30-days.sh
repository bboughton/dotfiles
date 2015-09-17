#!/usr/bin/env bash

readonly SCRIPT_NAME=$(basename $0)

log() {
  echo "$@"
  logger -p user.notice -t $SCRIPT_NAME "$@"
}

err() {
  echo "$@" >&2
  logger -p user.error -t $SCRIPT_NAME "$@"
}

log "Cleaning trash"

# Find files in the local trash that haven't been modified in the last 30 days
# Securely remove all the old files and directories with 7 passes
#
# Using -mindepth 1 -prune, so that if a DIRECTORY is in the Trash every file
# in the directory is deleted (good for app bundles)
/usr/bin/find $HOME/.Trash -mindepth 1 -prune -not -newermt '30 days ago' -exec /usr/bin/srm --recursive --medium --zero --force {} \;
