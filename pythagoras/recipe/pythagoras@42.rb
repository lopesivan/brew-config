# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class PythagorasAT42 < Formula
  desc 'Commnad line template snipetts.'
  homepage 'https://github.com/lopesivan/pythagoras'
  url 'https://github.com/lopesivan/pythagoras.git',
      branch: 'main',
      using: :git
  version '1.2.4'
  head 'https://github.com/lopesivan/pythagoras.git',
       branch: 'master',
       using: :git
  license 'GPL-3.0-or-later'

  def install
    system 'make'
    system 'make', "PREFIX=#{prefix}", 'install'
  end

  test do
    system 'false'
  end
end
