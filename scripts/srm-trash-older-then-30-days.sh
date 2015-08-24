#!/usr/bin/env bash

# Find files in the local trash that are older then 30 days
# Securely remove all the old files and directories with 7 passes
#
# Using -mindepth 1 -prune, so that if a DIRECTORY is in the Trash every file
# in the directory is deleted (good for app bundles)
/usr/bin/find $HOME/.Trash -mindepth 1 -prune -not -newerct '30 days ago' -exec /usr/bin/srm --recursive --medium --zero --force {} \;
