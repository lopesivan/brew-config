def install
  system 'make'
  system 'make', "PREFIX=#{prefix}", 'install'
end
