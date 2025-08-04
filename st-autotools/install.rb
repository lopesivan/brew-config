def install
  system './gera-opcao.sh', 'enable', 'debug', '"Ativa modo de depuração"'
  system 'sh', './autogen.sh'
  system './configure'
  system 'make'
  #system 'make', "PREFIX=#{prefix}", 'install'
end


