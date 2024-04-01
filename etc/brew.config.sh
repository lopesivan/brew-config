#!/bin/bash

#source ./data.repo

cat <<EOF
ROOT=$PWD
REPO_NAME=$1
VERSION=$2
DESCRIPTION="$(cat ./.git/description)"
##############################################################################
REVISION=$(git log -n1 --format=format:"%H")
BRANCH=main
REMOTE_REPO=$(git remote -v | awk '{print $2; exit}')
# vim: ft=sh
EOF

exit 0
