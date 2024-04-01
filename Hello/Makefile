RECIPE=Hello
PKGNAME=hello
VERSION=2.12
REPO=http://192.168.2.43:8899/my_gnu/$(PKGNAME)-$(VERSION).tar.gz
install:
	brew $@ $(RECIPE)
uninstall:
	brew $@ $(RECIPE)
clone:
	wget $(REPO)
	tar xvzf $(PKGNAME)-$(VERSION).tar.gz
recipes:
	hub clone my_recipes
