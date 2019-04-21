#!/bin/sh

DIRNAME="$HOME/notes"

if [ ! -d "$DIRNAME" ]; then
    mkdir $DIRNAME
fi


NOTE="$DIRNAME/$1"

if [ -z $2  ]; then
    $EDITOR $NOTE
else
    shift
    echo $* >> $NOTE
fi