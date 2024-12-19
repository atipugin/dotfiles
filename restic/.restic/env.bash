#!/usr/bin/env bash

AWS_ACCESS_KEY_ID=$(security find-generic-password -s b2-access-key -w)
AWS_SECRET_ACCESS_KEY=$(security find-generic-password -s b2-secret-key -w)
RESTIC_HOST=$(scutil --get LocalHostName)
RESTIC_PASSWORD_COMMAND='security find-generic-password -s restic-password -w'
RESTIC_REPOSITORY=$(security find-generic-password -s restic-repository -w)

export AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY RESTIC_HOST RESTIC_PASSWORD_COMMAND RESTIC_REPOSITORY

if [ -f "$HOME/.restic/env.bash.local" ]; then
  source "$HOME/.restic/env.bash.local"
fi
