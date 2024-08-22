 I  $ cd pythagoras/
Java: 19   main  /workspace/brew-config/pythagoras
 I  $ ls
data.repo  install.rb    Makefile   recipe        USAGE.md
etc        install.rb.0  README.md  upgrade-brew
Java: 19   main  /workspace/brew-config/pythagoras
 I  $ which pythagoras
/home/linuxbrew/.linuxbrew/bin/pythagoras
Java: 19   main  /workspace/brew-config/pythagoras
 I  $ ldd `which pythagoras`
        linux-vdso.so.1 (0x00007ffcadbfe000)
        libm.so.6 => /lib/x86_64-linux-gnu/libm.so.6 (0x00007f0d10201000)
        libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x00007f0d1000f000)
        /lib64/ld-linux-x86-64.so.2 (0x00007f0d1039f000)
Java: 19   main  /workspace/brew-config/pythagoras
 I  $ make uninstall
brew uninstall pythagoras@42
Uninstalling /home/linuxbrew/.linuxbrew/Cellar/pythagoras@42/1.2.4... (4 files, 34.6KB)
Java: 19   main  /workspace/brew-config/pythagoras
 I  $ make install
brew install pythagoras@42
==> Fetching lopesivan/my_recipes/pythagoras@42
==> Cloning https://github.com/lopesivan/pythagoras.git
Cloning into '/home/ivan/.cache/Homebrew/pythagoras@42--git'...
==> Checking out branch main
Already on 'main'
Your branch is up to date with 'origin/main'.
==> Installing pythagoras@42 from lopesivan/my_recipes
==> make
==> make PREFIX=/home/linuxbrew/.linuxbrew/Cellar/pythagoras@42/1.2.4 install
🍺  /home/linuxbrew/.linuxbrew/Cellar/pythagoras@42/1.2.4: 5 files, 48.3KB, built in 4 seconds
Java: 19   main  /workspace/brew-config/pythagoras
 I  $ ldd `which pythagoras`
        linux-vdso.so.1 (0x00007ffc21f0c000)
        libm.so.6 => /lib/x86_64-linux-gnu/libm.so.6 (0x00007f0fc4a38000)
        libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x00007f0fc4846000)
        /lib64/ld-linux-x86-64.so.2 (0x00007f0fc4bd6000)
Java: 19   main  /workspace/brew-config/pythagoras
 I  $ make uninstall
brew uninstall pythagoras@42
Uninstalling /home/linuxbrew/.linuxbrew/Cellar/pythagoras@42/1.2.4... (5 files, 48.3KB)
Java: 19   main  /workspace/brew-config/pythagoras
 I  $ make install
brew install pythagoras@42
==> Fetching lopesivan/my_recipes/pythagoras@42
==> Cloning https://github.com/lopesivan/pythagoras.git
Updating /home/ivan/.cache/Homebrew/pythagoras@42--git
==> Checking out branch main
Already on 'main'
Your branch is up to date with 'origin/main'.
HEAD is now at 4b3d1dd Remove o arquivo a.lua
==> Installing pythagoras@42 from lopesivan/my_recipes
==> make
==> make PREFIX=/home/linuxbrew/.linuxbrew/Cellar/pythagoras@42/1.2.4 install
🍺  /home/linuxbrew/.linuxbrew/Cellar/pythagoras@42/1.2.4: 5 files, 45.6KB, built in 2 seconds
Java: 19   main  /workspace/brew-config/pythagoras
 I  $ ldd `which pythagoras`
/home/linuxbrew/.linuxbrew/bin/pythagoras: /lib/x86_64-linux-gnu/libc.so.6: version `GLIBC_2.34' not found (required by /home/linuxbrew/.linuxbrew/bin/pythagoras)
        linux-vdso.so.1 (0x00007fff895c7000)
        libm.so.6 => /lib/x86_64-linux-gnu/libm.so.6 (0x00007f2522d2f000)
        libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x00007f2522b3d000)
        /home/linuxbrew/.linuxbrew/lib/ld.so => /lib64/ld-linux-x86-64.so.2 (0x00007f2522ecd000)
Java: 19   main  /workspace/brew-config/pythagoras
 I  $ pythagoras  44 55
argc = <3>
hypotenuse:  70.4344
cathetu   :  44.0000
cathetu   :  55.0000
--
hypotenuse:  44.0000
cathetu   :  33.0000
cathetu   :  55.0000
Java: 19   main  /workspace/brew-config/pythagoras
 I  $ make uninstall
brew uninstall pythagoras@42
Uninstalling /home/linuxbrew/.linuxbrew/Cellar/pythagoras@42/1.2.4... (5 files, 45.6KB)

