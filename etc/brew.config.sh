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
REMOTE_REPO=$(git remote get-url origin | sed -E 's#git@([^:]+):([^\.]+)(\.git)?#https://\1/\2#')

# vim: ft=sh
EOF

exit 0
