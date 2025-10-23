  def install
    system 'cmake', '.'
    system 'make', "PREFIX=#{prefix}", 'install'
  end
