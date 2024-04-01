# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class HelloAT42 < Formula
  desc "O programa hello é uma utilitário simples projetado para imprimir Hello, world! no console."
  homepage "https://github.com/lopesivan/hello"
  url "https://github.com/lopesivan/hello.git",
    revision: "a95871b4a525196ff513ae31ae04f65240ad844e"
  version "1.0.2"
#  head "https://github.com/lopesivan/hello",
#    branch: "main",
#    using: :git
  license "GPL-3.0-or-later"
  patch do
    url 'https://raw.githubusercontent.com/lopesivan/my_patches/main/hello/hello-custom-69c7d9da428fc056d738933effc43f69d7484eb6-20240401.diff'
    sha256 '21f97e588559775b3c5f9a11719e12d6b55a66d6e086bc8d8cbcc02f4abf073d'
  end
  def install
    args = %W[
      --prefix=#{prefix}
    ]
  
    system 'sh', 'autogen.sh'
  
    mkdir 'build' do
      system '../configure', *args
      # system 'make', 'CC=/usr/bin/gcc', 'CXX=/usr/bin/g++'
      system 'make', 'install'
    end
  end
  test do
    system "false"
  end
end
