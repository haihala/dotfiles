#!/bin/bash

source lib_metaconfig

DIRNAME=load_metaconfig note

NOTE="$DIRNAME/$1"

echo $NOTE
if [ -z $2  ]; then
    $EDITOR $NOTE
else
    shift
    echo $* >> $NOTE
fi
