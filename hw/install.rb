def install
  args = %W[
    --no-warn-unused-cli
    -DCMAKE_EXPORT_COMPILE_COMMANDS:BOOL=TRUE
    -DCMAKE_BUILD_TYPE:STRING=Debug
    -DCMAKE_C_COMPILER:FILEPATH=clang
    -DCMAKE_CXX_COMPILER:FILEPATH=clang++
    -DCMAKE_INSTALL_PREFIX=#{prefix}
  ]

  mkdir("build") do
    system("cmake", *args, "..", "-G", "Ninja")
    system("ninja")
    system("ninja", "install")
  end
end
