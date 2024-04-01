#!/bin/bash

source ./data.repo

##############################################################################
MY_RECIPE=${REPO_NAME}@42.rb
LOCAL_REPO=${REPO_NAME}

echo '# Step 5 - Create recipes'

exec 4>&1 # stdout duplicado ( FD 4 tem as mesmas caracteristicas
# do STDOUT), aponta para o terminal.

exec 1>${MY_RECIPE} # stdout aponta para `${MY_RECIPE}'

cat <<EOF
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class $(echo $REPO_NAME | sed -r 's/(^|-)([a-z])/\U\2/g')AT42 < Formula
  desc "${DESCRIPTION}"
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
for f in *.diff; do
	echo
	sha256sum $f |
		sed "s@\(.\+\)  \(.\+\.diff\)@    url 'https://raw.githubusercontent.com/lopesivan/my_patches/main/${REPO_NAME}/\2'\n    sha256 '\1'@"
done
echo '  end'

cat <<EOF
  $(cat ./install.rb | sed '2,$s/^/  /')
  test do
    system "false"
  end
end
EOF

exec 1>&4 # FD 1 recebe as caracteristicas de FD 4.
# FD 1 ressetado.

exec 4>&- # FD 4 eh liberado.

exit 0
