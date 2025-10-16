#!/bin/sh

export XDG_RUNTIME_DIR=/run/user/$(id -u)

if ! [ -f $HOME/.config/speech-dispatcher ]; then
    cp -a $SNAP/etc/speech-dispatcher $HOME/.config/speech-dispatcher
fi

$SNAP/usr/bin/speech-dispatcher -s -t 0 -C $HOME/.config/speech-dispatcher