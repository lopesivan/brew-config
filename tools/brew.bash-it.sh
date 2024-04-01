#!/bin/bash

ROOT=$PWD
MY_RECIPE=bash-it.rb
VERSION=3.8.4
##############################################################################
REPO_NAME=bash-it
 REVISION=2ef5d483e38d790cb1c32ea8999dfbc244ff2f91
   BRANCH=master
##############################################################################
REMOTE_REPO=https://github.com/Bash-it/bash-it
LOCAL_REPO=${HOME}/git/${REPO_NAME}

# Step 1 - Clone repo 
git clone ${REMOTE_REPO} a
git clone ${LOCAL_REPO}  b

# Step 2 - Aplique modificação
cd a
#git checkout ${BRANCH}
git checkout ${REVISION}
git switch -c ${REVISION}
cp -r ../b/* .
 
# Step 3 - Cria diff
git checkout -b doing
git ci -a -m "custom"
git format-patch --stdout HEAD^ > ../${REPO_NAME}-$(git log -n1 --format=format:"%s"| tr '[[:upper:] ]' '[[:lower:]_]')-$(date +%Y%m%d)-$(git log -n1 --format=format:"%h").diff
git checkout ${BRANCH}
git branch -D doing

# Step 4 - Upload diff
cd $ROOT

hub clone my_patches
test -d my_patches/${REPO_NAME} || mkdir my_patches/${REPO_NAME} 
cp *.diff my_patches/${REPO_NAME} 
cd my_patches
git add .
git ci -m "update ${REPO_NAME}" 
git push

# Step 5 - Create recipes
cd $ROOT

exec 4>&1             # stdout duplicado ( FD 4 tem as mesmas caracteristicas
                      # do STDOUT), aponta para o terminal.

exec 1>${MY_RECIPE}   # stdout aponta para `${MY_RECIPE}' 

cat <<EOF
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class $( echo $REPO_NAME|sed -r 's/(^|-)([a-z])/\U\2/g' ) < Formula
  desc "Bash-it is a collection of community Bash commands and scripts for Bash 3.2+. (And a shameless ripoff of oh-my-zsh smiley."
  homepage "${REMOTE_REPO}"
  url "${REMOTE_REPO}.git",
    revision: "${REVISION}"
  version "${VERSION}"
#  head "${REMOTE_REPO}",
#    branch: "${BRANCH}",
#    using: :git
  license "GPL-3.0-or-later"
EOF

echo -n '  patch do' 
for f in *.diff; do echo;
    sha256sum $f |
    sed "s@\(.\+\)  \(.\+\.diff\)@    url 'https://raw.githubusercontent.com/lopesivan/my_patches/main/${REPO_NAME}/\2'\n    sha256 '\1'@";
done
echo '  end'

cat <<EOF
  def install
    prefix.install Dir["*"]
  end

  test do
    system "false"
  end
end
EOF

exec 1>&4             # FD 1 recebe as caracteristicas de FD 4.
                      # FD 1 ressetado.

exec 4>&-             # FD 4 eh liberado.

# Step 6 - Upload recipes
cd $ROOT
hub clone my_recipes
cp ${MY_RECIPE} my_recipes/
cd my_recipes
git add .
git ci -m "[${VERSION}] update ${MY_RECIPE}"  
git push

exit 0
