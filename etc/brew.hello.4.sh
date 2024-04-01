#!/bin/bash

source ./data.repo

##############################################################################
MY_RECIPE=${REPO_NAME}@42.rb
LOCAL_REPO=${REPO_NAME}

echo '# Step 6 - Upload recipes'
#hub clone my_recipes
cp ${MY_RECIPE} my_recipes/
cd my_recipes
git add .
git ci -m "[${VERSION}] update ${MY_RECIPE}"
git push

exit 0
