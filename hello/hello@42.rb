# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class HelloAT42 < Formula
  desc 'O programa hello é uma utilitário simples projetado para imprimir Hello, world! no console.'
  homepage 'https://github.com/lopesivan/hello'
  url 'https://github.com/lopesivan/hello.git',
      revision: 'a95871b4a525196ff513ae31ae04f65240ad844e'
  version '1.0.0'
  #  head "https://github.com/lopesivan/hello",
  #    branch: "main",
  #    using: :git
  license 'GPL-3.0-or-later'

  def install
    system 'make'
    system 'make', "PREFIX=#{prefix}", 'install'
  end

  test do
    system 'false'
  end
end
