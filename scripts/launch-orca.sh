#!/bin/sh

export XDG_RUNTIME_DIR=/run/user/$(id -u)
cd $HOME
$SNAP/usr/bin/orca --debug