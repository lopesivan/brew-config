#!/bin/bash

source ./data.repo

##############################################################################
MY_RECIPE=recipe/${REPO_NAME}@42.rb
LOCAL_REPO=${REPO_NAME}

echo '# Step 6 - Upload recipes'
#hub clone my_recipes
cp ${MY_RECIPE} my_recipes/
cd my_recipes
git add .
git ci -m "[${VERSION}] new ${MY_RECIPE}"
git push

exit 0
