#!/bin/bash

export XDG_RUNTIME_DIR=/run/user/$(id -u)

# Copy the default configuration into the user's HOME folder
# to allow them to customize it.
if [ ! -d $HOME/.config/speech-dispatcher ]; then
    cp -a $SNAP/etc/speech-dispatcher $HOME/.config/speech-dispatcher
fi

cd $HOME
$SNAP/usr/bin/speech-dispatcher -s -t 0 -C $HOME/.config/speech-dispatcher