def install
  args = %W[
    --prefix=#{prefix}
  ]

  system 'sh', 'autogen.sh'
  system './configure', *args
  system 'make', 'CC=/usr/bin/gcc', 'CXX=/usr/bin/g++'
  system 'make', 'install'
end
