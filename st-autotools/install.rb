  def install

    ENV["PKG_CONFIG_PATH"] = [
    Formula["freetype"].opt_lib/"pkgconfig",
    Formula["fontconfig"].opt_lib/"pkgconfig",
    Formula["libpng"].opt_lib/"pkgconfig",
    Formula["zlib"].opt_lib/"pkgconfig",
    Formula["bzip2"].opt_lib/"pkgconfig",
    Formula["expat"].opt_lib/"pkgconfig"
    ].join(":")

    system "./gera-opcao.sh", "enable", "debug", '"Ativa modo de depuração"'
    system "sh", "autogen.sh"
    system "./configure", "--prefix=#{prefix}"
    system "make", "CC=/bin/c99", 'install'
  end
