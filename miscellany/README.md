Tem que existir o _.OFF_ em:

```
    $ ls -a ${HOME}/.linuxbrew/Homebrew/Library/Homebrew/shims/linux/super
```

Para tanto faco _make_ em _/home/ivan/developer/env/linuxbrew_

```{bash}
test -e \
/home/linuxbrew/.linuxbrew/Homebrew/Library/Homebrew/shims/linux/super/.OFF &&
echo exite||
echo não exite
```
