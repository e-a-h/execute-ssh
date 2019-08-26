#!/bin/bash
SSHPATH="$HOME/.ssh"
mkdir "$SSHPATH"
echo "$DEPLOY_KEY" > "$SSHPATH/key"
chmod 600 "$SSHPATH/key"
ssh -o StrictHostKeyChecking=no -i "$SSHPATH/key" -p "$PORT"  "$SERVER_CONNECTION_STRING" "$COMMAND"