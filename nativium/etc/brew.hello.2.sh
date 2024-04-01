#!/bin/bash

source ./data.repo

##############################################################################
MY_RECIPE=${REPO_NAME}@42.rb
LOCAL_REPO=${REPO_NAME}

echo '# Step 4 - Upload diff'

#hub clone my_patches
test -d my_patches/${REPO_NAME} || mkdir my_patches/${REPO_NAME}
cp *.diff my_patches/${REPO_NAME}
cd my_patches
git add .
git ci -m "update ${REPO_NAME}"
git push

exit 0
