#!/bin/bash
SSHPATH="$HOME/.ssh"
mkdir "$SSHPATH"
echo "$DEPLOY_KEY" > "$SSHPATH/key"
chmod 600 "$SSHPATH/key"
sh -c "ssh -v -o StrictHostKeyChecking=no -i $SSHPATH/key -J $SERVER_CONNECTION_STRING   \"$COMMAND\""