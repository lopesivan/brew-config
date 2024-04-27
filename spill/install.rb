def install
  args = %W[
    --prefix=#{prefix}
  ]

  system './configure', *args
  system 'make'
  system 'make', 'install'
end
