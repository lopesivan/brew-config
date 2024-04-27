#!/bin/bash

#source ./data.repo

cat <<EOF
ROOT=$PWD
REPO_NAME=$1
VERSION=$2
DESCRIPTION="$(cat ./.description)"
##############################################################################
REVISION=$(git log -n1 --format=format:"%H")
BRANCH=$(git branch | awk '{print $2}')
REMOTE_REPO=$(git remote -v | awk '{print $2; exit}')
# vim: ft=sh
EOF

exit 0
