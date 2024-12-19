#!/usr/bin/env fish

set -x AWS_ACCESS_KEY_ID (security find-generic-password -s b2-access-key -w)
set -x AWS_SECRET_ACCESS_KEY (security find-generic-password -s b2-secret-key -w)
set -x RESTIC_HOST (scutil --get LocalHostName)
set -x RESTIC_PASSWORD_COMMAND 'security find-generic-password -s restic-password -w'
set -x RESTIC_REPOSITORY (security find-generic-password -s restic-repository -w)
