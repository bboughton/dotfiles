#!/usr/bin/env bash


/usr/bin/find $HOME/Downloads -mindepth 1 -prune -not -newerct '1 week ago' | xargs -J % /bin/mv % ~/.Trash
