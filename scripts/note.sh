#!/bin/bash
source lib_metaconfig
load_metaconfig note
NOTE="$DIRNAME/$1"
if [ ! -d $DIRNAME ]; then
	mkdir -p $DIRNAME
fi


if [ -z $2  ]; then
    $EDITOR $NOTE
else
    shift
    echo $* >> $NOTE
fi
