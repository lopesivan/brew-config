# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class HelloAT42 < Formula
  desc 'O programa hello é uma utilitário simples projetado para imprimir Hello, world! no console.'
  homepage 'https://github.com/lopesivan/hello'
  url 'https://github.com/lopesivan/hello.git',
      revision: 'a95871b4a525196ff513ae31ae04f65240ad844e'
  version '1.0.1'
  #  head "https://github.com/lopesivan/hello",
  #    branch: "main",
  #    using: :git
  license 'GPL-3.0-or-later'

  def install
    args = %W[
      --prefix=#{prefix}
    ]

    system 'sh', 'autogen.sh'

    mkdir 'build' do
      system '../configure', *args
      system 'make', 'CC=/usr/bin/gcc', 'CXX=/usr/bin/g++'
      system 'make', 'install'
    end
  end

  test do
    system 'false'
  end
end
