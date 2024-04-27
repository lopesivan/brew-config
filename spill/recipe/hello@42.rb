# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class HelloAT42 < Formula
  desc 'O programa hello é uma utilitário simples projetado para imprimir Hello, world! no console.'
  homepage 'https://github.com/lopesivan/hello'
  url 'https://github.com/lopesivan/hello.git',
      revision: '51cdd2e73d9a7da3c87ffc7d3562bfa512b81826'
  version '1.0.3'
  #  head "https://github.com/lopesivan/hello",
  #    branch: "main",
  #    using: :git
  license 'GPL-3.0-or-later'

  def install
    args = %W[
      --prefix=#{prefix}
    ]

    system 'sh', 'autogen.sh'
    system './configure', *args
    system 'make', 'CC=/usr/bin/gcc', 'CXX=/usr/bin/g++'
    system 'make', 'install'

    # mkdir 'build' do
    #   system './configure', *args
    #    system 'make', 'CC=/usr/bin/gcc', 'CXX=/usr/bin/g++'
    #   system 'make', 'install'
    # end
  end

  test do
    system 'false'
  end
end
