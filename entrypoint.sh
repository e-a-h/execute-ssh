#!/bin/bash
set -eu

SSHPATH="$HOME/.ssh"
mkdir "$SSHPATH"
echo "$DEPLOY_KEY" > "$SSHPATH/key"
chmod 600 "$SSHPATH/key"
# sync it up"
sh -c "ssh -J $SERVER_CONNECTION_STRING $OTHER_ARGS \"$COMAND\""