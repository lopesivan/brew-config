# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class SpillAT42 < Formula
  desc 'spill is a program for creating set of symbolic links from one directory hierarchy which point to corresponding filenames in a separate directory hierarchy.'
  homepage 'git@github.com:ivancarlos/spill.git'
  url 'https://github.com/ivancarlos/spill.git',
      revision: 'b2f868fa6cb645a98d19d5e62cb364fc5a53a231'
  version '1.0.1'
  #  head "git@github.com:ivancarlos/spill.git",
  #    branch: "master",
  #    using: :git
  license 'GPL-3.0-or-later'
  patch do
    url 'https://raw.githubusercontent.com/lopesivan/my_patches/main/spill/spill-custom-d40f0887c60b4dfac61c007893d09213ee01fe26-20240427.diff'
    sha256 '7c5e09b99d0e463871fb2a29baeff9c38f6fd3c65a0bfabca62a5dec515fd0cf'
  end
  def install
    args = %W[
      --prefix=#{prefix}
    ]

    system './configure', *args
    system 'make'
    system 'make', 'install'
  end
  test do
    system 'false'
  end
end
