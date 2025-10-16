#!/bin/sh

export XDG_RUNTIME_DIR=/run/user/$(id -u)
$SNAP/usr/bin/orca --debug