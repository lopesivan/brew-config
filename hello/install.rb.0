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
