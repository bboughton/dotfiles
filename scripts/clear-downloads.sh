#!/usr/bin/env bash

/usr/bin/find $HOME/Downloads -mindepth 1 -prune -not -newerct '1 week ago' | while read item
do
	/bin/mv "${item}" ~/.Trash
done
