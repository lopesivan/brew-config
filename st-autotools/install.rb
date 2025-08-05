  def install
    # Força o uso do pkg-config do sistema
    ENV["PKG_CONFIG"] = "/usr/bin/pkg-config"

    # Força o path onde estão os .pc files
    ENV["PKG_CONFIG_PATH"] = "/usr/lib/x86_64-linux-gnu/pkgconfig"

    system "./gera-opcao.sh", "enable", "debug", '"Ativa modo de depuração"'
    system "sh", "autogen.sh"
    system "./configure", "--prefix=#{prefix}"
    system "make", "CC=/bin/c99"
    #system 'make', "PREFIX=#{prefix}", 'install'
  end
