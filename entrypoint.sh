#!/bin/bash
SSHPATH="$HOME/.ssh"
mkdir "$SSHPATH"
echo "$DEPLOY_KEY" > "$SSHPATH/key"
chmod 600 "$SSHPATH/key"
ssh -o StrictHostKeyChecking=no -v -i "$SSHPATH/key" -J  "$SERVER_CONNECTION_STRING" "$COMMAND"


