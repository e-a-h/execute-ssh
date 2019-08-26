#!/bin/bash
SSHPATH="$HOME/.ssh"
mkdir "$SSHPATH"
echo "$DEPLOY_KEY" > "$SSHPATH/key"
chmod 600 "$SSHPATH/key"
# sync it up"
sh -c "ssh -tt -J $SERVER_CONNECTION_STRING -i \"$SSHPATH/key\" $OTHER_ARGS \"$COMMAND\""