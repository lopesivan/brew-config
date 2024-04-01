#!/bin/bash

source ./data.repo

##############################################################################
MY_RECIPE=${REPO_NAME}@42.rb
LOCAL_REPO=${REPO_NAME}

echo '# Step 1 - Clone repo'
git clone ${REMOTE_REPO} a
git clone ${LOCAL_REPO} b

echo '# Step 2 - Aplique modificação'
cd a
#git checkout ${BRANCH}
git checkout ${REVISION}
git switch -c ${REVISION}
cp -r ../b/* .

echo '# Step 3 - Cria diff'
git checkout -b doing
git add .
git ci -m "custom"
git format-patch --stdout HEAD^ >../${REPO_NAME}-custom-$(git log -n1 --format=format:"%H")-$(date +%Y%m%d).diff
git checkout ${BRANCH}
git branch -D doing

exit 0
